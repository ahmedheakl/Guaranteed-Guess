### <--- Suppress urllib warning
import warnings
warnings.filterwarnings("ignore", message="urllib3 v2 only supports OpenSSL 1.1.1+")
### --->
import os
import glob
from tqdm import tqdm
import multiprocessing as mp
from dotenv import load_dotenv
import random
from compile_arm_clang import compile as compile_arm
from compile_x86_clang import compile as compile_x86
import pandas as pd
from loguru import logger

DATA_ROOT = "eval"
MAX_FILES = 600_000
OPTIMIZATION_LEVEL = "O0"
TIMEOUT=20

load_dotenv()

def get_files(dir: str):
    return glob.glob(f"{dir}/*/code.c", recursive=True)

def compile_file(file):
    path_x86 = compile_x86(file, optimization_level=OPTIMIZATION_LEVEL, timeout=TIMEOUT)
    path_arm = compile_arm(file, optimization_level=OPTIMIZATION_LEVEL, timeout=TIMEOUT)
    if path_arm is not None and path_x86 is not None:
        return path_x86, path_arm, file
    return None

def main():
    logger.info("Collecting files ..")
    files = get_files(DATA_ROOT)
    logger.info(f"Found [{len(files)}] files.")
    files = sorted(files)
    files = files[:MAX_FILES]
    logger.info(f"Compiling [{len(files)}] files ..")


    with mp.Pool(processes=mp.cpu_count()) as pool:
        results = list(tqdm(pool.imap(compile_file, files), total=len(files)))

    paths = [r for r in results if r is not None]
    logger.info(f"Compiled [{len(paths)}/{len(files)}] files.")
    data = {
        "x86": [],
        "arm": [],
        "file": []
    }
    def read_file(path):
        with open(path, 'r') as f:
            return f.read()
    
    logger.info("Reading files ..")
    for x86, arm, filename in paths:
        data["x86"].append(read_file(x86))
        data["arm"].append(read_file(arm))
        data["file"].append(filename)

    logger.info("Writing to parquet ..")
    df = pd.DataFrame(data)
    df.to_parquet("compiled_datasets/asm2asm_bench_armv8_O0.parquet")


if __name__ == "__main__":
    main()
