import re
import sys

if len(sys.argv) !=2:
    print("Usage: python3 logclean.py <logfile>")
    sys.exit(1)

log_file = sys.argv[1]

try:
    with open(log_file, "r") as f:
        logs = f.readlines()
except FileNotFoundError:
    print(f"Error: File {log_file} not found.")
    sys.exit(1)

cleaned_logs = []

for line in logs:
    line = re.sub(r'\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}', '',line)
    line = re.sub(r'\d+\.\d+\.\d+\.\d+', '',line)
    cleaned_logs.append(line.strip())

output_file = "cleaned_" + log_file.split("/")[-1]

with open(output_file, "w") as f:
    for entry in cleaned_logs:
        f.write(entry + "\n")

print(f"Cleaned log saved as: {output_file}")
