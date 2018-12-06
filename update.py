import subprocess
import sys

out = subprocess.run(["git", "pull"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
output = out.stdout.decode('utf-8')
print(output)

if "Merge" in output or "Updating" in output:
    print("Merge in output")
    sys.exit(0)
else:
    print("Merge not in output")
    sys.exit(1)

