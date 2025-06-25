import os
import shutil
import subprocess
import pandas as pd
from glob import glob
import argparse
from datasets import Dataset
from tqdm import tqdm


def parse_args():
    parser = argparse.ArgumentParser(description="Compile and package C programs into ARM/x86 assembly pairs.")
    parser.add_argument("--opt-level", type=str, default="O2", choices=["O0", "O1", "O2", "O3"], help="Optimization level for compilation (e.g., O0, O2, O3)")
    parser.add_argument("--output-parquet", type=str, default="../compiled_datasets/asm2asm_bringup.parquet", help="Path to output .parquet file")
    parser.add_argument("--output-dir", type=str, default="bringup_output", help="Directory to store intermediate compiled files")
    parser.add_argument("--hf-repo", type=str, default=None, help="HuggingFace repo name to push the dataset to (e.g., username/dataset-name)")
    return parser.parse_args()


PROGRAM_DIRS = [
    'ackermann', 'anagram', 'audio-codec', 'avl-tree', 'banner', 'blake2b', 'bloom-filter',
    'boyer-moore-search', 'bubble-sort', 'c-interp', 'checkers', 'cipher', 'dhrystone',
    'distinctness', 'donut', 'fft-int', 'flood-fill', 'frac-calc', 'fuzzy-match', 'fy-shuffle',
    'gcd-list', 'grad-descent', 'graph-tests', 'hanoi', 'heapsort', 'indirect-test', 'k-means',
    'kadane', 'kepler', 'knapsack', 'knights-tour', 'life', 'longdiv', 'lz-compress', 'mandelbrot',
    'max-subseq', 'mersenne', 'minspan', 'murmur-hash', 'natlog', 'nr-solver', 'parrondo', 'pascal',
    'pi-calc', 'primal-test', 'priority-queue', 'quaternions', 'qsort-demo', 'quine', 'rabinkarp-search',
    'regex-parser', 'rho-factor', 'rle-compress', 'shortest-path', 'sieve', 'simple-grep', 'skeleton',
    'spelt2num', 'spirograph', 'strange', 'tiny-NN', 'topo-sort', 'totient', 'vectors-3d', 'weekday'
]

COMMON_PATH = "common"
TARGET_PATH = "target"

def compile_source(directory: str, arch: str, opt_level: str):
    source = f"{directory}/{directory}.c"
    output = f"{directory}/{directory}.s" if arch == "arm64" else f"{directory}/{directory}_x86.s"

    if not os.path.exists(source):
        print(f"Missing source file: {source}")
        return

    if arch == "arm64":
        cmd = f"clang -arch arm64 -DTARGET_HOST -I{COMMON_PATH} -I{TARGET_PATH} -S {source} -o {output} -{opt_level}"
    else:
        cmd = f"clang -S -target x86_64-apple-darwin -DTARGET_HOST -I{COMMON_PATH} -I{TARGET_PATH} {source} -o {output} -{opt_level}"

    try:
        print(f"Compiling [{arch}] {source}...")
        subprocess.run(cmd, shell=True, check=True, capture_output=True, text=True, timeout=20)
    except subprocess.CalledProcessError as e:
        print(f"Compilation failed for {source}: {e.stderr}")

def copy_assembly_files(arch: str, output_root: str):
    out_dir = os.path.join(output_root, "arm64_bringup" if arch == "arm64" else "x86_bringup")
    os.makedirs(out_dir, exist_ok=True)

    for dirname in os.listdir('.'):
        if not os.path.isdir(dirname): continue
        src = os.path.join(dirname, f"{dirname}.s" if arch == "arm64" else f"{dirname}_x86.s")
        if not os.path.exists(src): continue
        if arch == "arm64":
            sub_dir = os.path.join(out_dir, dirname)
            os.makedirs(sub_dir, exist_ok=True)
            dest = os.path.join(sub_dir, f"{dirname}.s")
        else:
            dest = os.path.join(out_dir, f"{dirname}.s")
        shutil.copy2(src, dest)
        print(f"Copied {src} → {dest}")

def read_file(path: str) -> str:
    with open(path, 'r', encoding='utf-8') as f:
        return f.read()

def create_assembly_dataset(output_dir: str, output_path: str):
    arm_dir = os.path.join(output_dir, "arm64_bringup")
    x86_dir = os.path.join(output_dir, "x86_bringup")

    arm_files = {os.path.basename(f).replace(".s", ""): f for f in glob(f"{arm_dir}/**/*.s", recursive=True)}
    x86_files = {os.path.basename(f).replace(".s", "").replace("_x86", ""): f for f in glob(f"{x86_dir}/*.s")}

    common_keys = sorted(set(arm_files) & set(x86_files))
    print(f"Matched {len(common_keys)} assembly pairs")

    data = {
        'file': [],
        'x86': [],
        'arm': []
    }

    for key in common_keys:
        try:
            data['file'].append(key)
            data['x86'].append(read_file(x86_files[key]))
            data['arm'].append(read_file(arm_files[key]))
        except Exception as e:
            print(f"Error reading {key}: {e}")

    df = pd.DataFrame(data)
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    df.to_parquet(output_path, index=False)
    print(f"Saved {len(df)} pairs to {output_path}")

def push_to_huggingface(local_path: str, repo_name: str):
    print(f"Pushing {local_path} to HuggingFace Hub repo: {repo_name}")
    ds = Dataset.from_parquet(local_path)
    ds.push_to_hub(repo_name)

def main():
    args = parse_args()

    for d in tqdm(PROGRAM_DIRS, desc="Compiling arm64 programs"):
        compile_source(d, arch="arm64", opt_level=args.opt_level)
    copy_assembly_files("arm64", args.output_dir)

    for d in tqdm(PROGRAM_DIRS, desc="Compiling x86 programs"):
        compile_source(d, arch="x86", opt_level=args.opt_level)
    copy_assembly_files("x86", args.output_dir)

    create_assembly_dataset(args.output_dir, args.output_parquet)

    if args.hf_repo:
        push_to_huggingface(args.output_parquet, args.hf_repo)
    
    os.remove(args.output_dir)

if __name__ == "__main__":
    main()
