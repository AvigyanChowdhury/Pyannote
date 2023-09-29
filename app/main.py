# main.py

import subprocess

# First line of code
subprocess.run(["python", "inference.py"])

# change reference rttm file
subprocess.run(["python", "evaluation.py", "-r", "aepyx.rttm", "-s", "output.rttm"])
