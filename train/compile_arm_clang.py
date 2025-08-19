import subprocess
import os

def compile(input_file, optimization_level="O3", timeout=20) -> str:
    base_output_file = input_file.replace(".c", "")
    try:
        asm_output = f"{base_output_file}_{optimization_level}_arm.s"
        if os.path.exists(asm_output): return asm_output
        command = f"clang -arch arm64 -S {input_file} -o {asm_output} -{optimization_level}"
        _ = subprocess.run(
            command, shell=True, check=True, capture_output=True, text=True, timeout=20
        )
        return asm_output
    except Exception as e:
        print(f"Error in file {input_file}: {e}")
        return None
