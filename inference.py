from transformers import AutoModelForCausalLM, AutoTokenizer
import torch

model_name = "ahmedheakl/asm2asm_1.5B_armv8_O0"
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    torch_dtype=torch.bfloat16,
    device_map="auto",
    # attn_implementation="flash_attention_2", # you can use flash attention for 7x faster inference
)
tokenizer = AutoTokenizer.from_pretrained(model_name)

asm_x86 = r"""	.text
	.file	"extr_dtl.c_dtl_file_open.c"
	.p2align	4, 0x90 # -- Begin function dtl_file_open
	.type	dtl_file_open,@function
dtl_file_open: # @dtl_file_open
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	dtl_enable@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB0_2
"""
user_prompt = f"""Convert the following x86 assembly code to ARM assembly:\n```x86asm\n{asm_x86}\n```"""
messages = [
    {"role": "user", "content": user_prompt}
]
text = tokenizer.apply_chat_template(
    messages,
    tokenize=False,
    add_generation_prompt=True
)
model_inputs = tokenizer([text], return_tensors="pt").to(model.device)

generated_ids = model.generate(
    **model_inputs,
    max_new_tokens=16_000, # you can increase the num of tokens, but it would require more memory
    do_sample=False,
)
generated_ids = [
    output_ids[len(input_ids):] for input_ids, output_ids in zip(model_inputs.input_ids, generated_ids)
]

predicted_arm_assembly = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)[0]
predicted_arm_assembly = predicted_arm_assembly.split("```armasm\n")[-1].split("```")[0]
print(predicted_arm_assembly)