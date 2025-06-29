## BringupBench

### Inference 
You need to make sure `transformers`, `torch`, `python-Levenshtein`, and `datasets` are installed in your environment. Run the following script to run the inference on bringup-bench and save the results in a `results.json` file. Change `ahmedheakl/gg-armv8-O0` to the model you want to use for inference. 

```bash
python eval_bringupbench.py \
    --model_name ahmedheakl/gg-armv8-O0 \
    --output_file results.json \
    --dataset_path ahmedheakl/gg-bench-bringup-O0 \
    --max_length 32768 \
    --input_column x86 \
    --output_column arm \
    --files_column file \
```

### Evaluation
The evaluation is assumed to be run on MAC device. You have to save the predicted assembly files into their folders. Assuming you got an output `results.json` from the inference step, you can run the evaluation script as follows:

```bash 
cd bringup-bench
python save_preds --path ../results.json
```

Now to get an accuracy, run the following
```bash
make run-tests TARGET=host
```
The script basically does the following <br>
(1) compiles each `.s` from your inference into a `.o` file<br>
(2) Builds the bringup-bench as a static library<br>
(3) Links the `.o` files with the bringup-bench library<br>
(4) Runs the file and saves outputs in `{file}/FOO`<br>
(5) Compares the outputs with the expected outputs in `{file}/{file}.out` with `FOO` using `diff`<br>
(6) If the outputs match, it counts as a success<br>
(7) Finally, it prints the accuracy of your predictions<br>

### Benchmark Curation
To curate the benchmark with a specific optimization level and push to your huggingface repo, you can run the following command:

```bash
python curate_bench.py --opt-level O0 --repo username/repo_name
```
Replace `username/repo_name` with your actual Hugging Face repository name. The script will curate the benchmark with the specified optimization level and push it to your repository. Make sure you have your `HF_TOKEN` set in your environment variables for authentication.

```bash
export HF_TOKEN=<your_huggingface_token>
```

## HumanEval
Coming soon, stay tuned!