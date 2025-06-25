from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import load_dataset
from argparse import ArgumentParser
import torch
import json
from tqdm import tqdm

try:
    import Levenshtein
except ImportError:
    raise ImportError("Missing dependency: pip install python-Levenshtein")

parser = ArgumentParser(description="Evaluate x86 to ARM translation model.")
parser.add_argument("--model_name", type=str, default="ahmedheakl/gg-armv8-O0")
parser.add_argument("--dataset_path", type=str, default="ahmedheakl/gg-bench-bringup-O0")
parser.add_argument("--dataset_split", type=str, default="train")
parser.add_argument("--input_column", type=str, default="x86")
parser.add_argument("--output_column", type=str, default="arm")
parser.add_argument("--files_column", type=str, default="file")
parser.add_argument("--max_length", type=int, default=32768)
parser.add_argument("--output_file", type=str, default="results.json")
args = parser.parse_args()

model = AutoModelForCausalLM.from_pretrained(
    args.model_name,
    torch_dtype=torch.bfloat16,
    device_map="auto",
    attn_implementation="flash_attention_2",
)
tokenizer = AutoTokenizer.from_pretrained(args.model_name)

def translate(x86_code: str) -> str:
    prompt = f"Convert the following x86 assembly code to ARM assembly:\n```x86asm\n{x86_code}\n```"
    tokens = tokenizer.apply_chat_template([{"role": "user", "content": prompt}], tokenize=False, add_generation_prompt=True)
    inputs = tokenizer([tokens], return_tensors="pt").to(model.device)
    outputs = model.generate(**inputs, max_new_tokens=args.max_length, do_sample=False)
    new_tokens = [out[len(inp):] for inp, out in zip(inputs.input_ids, outputs)]
    decoded = tokenizer.batch_decode(new_tokens, skip_special_tokens=True)[0]
    return decoded.split("```armasm\n")[-1].split("```")[0]

dataset = load_dataset(args.dataset_path, split=args.dataset_split)

results = {k: [] for k in ["pred", "input", "gt", "ed", "files"]}

for sample in tqdm(dataset, desc="Processing samples"):
    x86_code = sample[args.input_column]
    gt_code = sample[args.output_column]
    filename = sample[args.files_column]
    try:
        print(f"Translating {filename}...")
        pred_code = translate(x86_code)
    except Exception as e:
        print(f"Error translating {filename}: {e}")
        pred_code = ""
    ed = Levenshtein.distance(pred_code, gt_code)

    results["pred"].append(pred_code)
    results["input"].append(x86_code)
    results["gt"].append(gt_code)
    results["ed"].append(ed)
    results["files"].append(filename)

with open(args.output_file, "w") as f:
    json.dump(results, f, indent=4)
