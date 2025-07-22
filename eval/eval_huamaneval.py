from datasets import load_dataset
from tqdm import tqdm
from transformers import AutoModelForCausalLM, AutoTokenizer
import torch
import json


dataset = load_dataset("ahmedheakl/gg-bench-armv8-O2", split="train")
model_name = "ahmedheakl/gg-armv8-O2"
print("Loading the model ...")
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    torch_dtype=torch.bfloat16,
    device_map="auto",
    attn_implementation="flash_attention_2"
)
tokenizer = AutoTokenizer.from_pretrained(model_name)
print("Model loaded ...")

def inference(asm_x86: str) -> str:
    messages = [
        {
            "role": "user",
            "content": f"""Convert the following x86 assembly code to ARM assembly:\n```x86asm\n{asm_x86}\n```""",
        },
    ]
    max_new_tokens = 32_000
    text = tokenizer.apply_chat_template(
        messages,
        tokenize=False,
        add_generation_prompt=True
    )
    model_inputs = tokenizer([text], return_tensors="pt").to("cuda")
    max_new_tokens = max_new_tokens - len(model_inputs['input_ids'][0])
    generated_ids = model.generate(
        **model_inputs,
        max_new_tokens=max_new_tokens,
        num_beams=8,
        num_return_sequences=1,
    )
    generated_ids = [
        output_ids[len(input_ids):] for input_ids, output_ids in zip(model_inputs.input_ids, generated_ids)
    ]

    response: str = tokenizer.batch_decode(generated_ids, skip_special_tokens=True)[0]
    print(response)
    return (
        response
        .split("```armasm\n")[-1]
        .split("```")[0]
    )


def edit_distance_assembly(gt: str, pred: str) -> int:
    def levenshtein(s1, s2):
        if len(s1) < len(s2):
            return levenshtein(s2, s1)

        if len(s2) == 0:
            return len(s1)

        previous_row = range(len(s2) + 1)
        for i, c1 in enumerate(s1):
            current_row = [i + 1]
            for j, c2 in enumerate(s2):
                insertions = previous_row[j + 1] + 1
                deletions = current_row[j] + 1
                substitutions = previous_row[j] + (c1 != c2)
                current_row.append(min(insertions, deletions, substitutions))
            previous_row = current_row

        return previous_row[-1]

    def preprocess(code):
        code = "\n".join(line.split(";")[0].strip() for line in code.split("\n"))
        code = "\n".join(line for line in code.split("\n") if line.strip())
        return code

    gt_processed = preprocess(gt)
    pred_processed = preprocess(pred)
    distance = levenshtein(gt_processed, pred_processed)

    return distance

def main():
    print("Running")
    data = {
        "pred": [], 
        "gt": [], 
        "input": [], 
        "files": [],
        "ed": []
    }
    for i in tqdm(range(len(dataset))):
        example = dataset[i]
        try:
            example = dataset[i]
            gt = example["arm"]
            input_asm = example["x86"]
            pred = inference(input_asm)
            data["pred"].append(pred)
            data["gt"].append(gt)
            data["input"].append(input_asm)
            data["files"].append(example["file"])
            distance = edit_distance_assembly(gt, pred)
            print(distance)
            data['ed'].append(distance)

        except KeyboardInterrupt:
            break
        except Exception as e:
            print(f"Error in file {example['file']}: {e}")

    with open("eval_armv8_O2.json", "w") as f:
        json.dump(data, f, indent=4)


if __name__ == "__main__":
    main()
