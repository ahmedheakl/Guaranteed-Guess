import json
from tqdm import tqdm
from argparse import ArgumentParser

parser = ArgumentParser(description="Save predictions from a JSON file to individual .s files.")
parser.add_argument("--path", type=str, default="sample_results.json", help="Path to the JSON file containing predictions.")
args = parser.parse_args()

with open(args.path, "r") as f:
    data = json.load(f)

count = 0
for i, file in tqdm(enumerate(data['files']), total=len(data['files'])):
    filename = file.replace(".s", "")
    filepath = f"{filename}/{filename}.s"
    with open(filepath, "w") as out:
        out.write(data['pred'][i])
    count += int(max(0, data['ed'][i] - 5) == 0)

print("Files less than 5 edit distance:", count)

filenames = [f.replace(".s", "") for f in data['files']]
print(" ".join(filenames))
print("Total files:", len(filenames))
