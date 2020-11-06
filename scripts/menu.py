#!/usr/bin/env python3

import subprocess
import json

try:
	outputs = subprocess.check_output(["swaymsg", "-t", "get_outputs"])
	outputs = json.loads(outputs.decode('utf-8').replace("'", '"'))
	for idx, output in enumerate(outputs):
		if output["focused"]:
			print(idx + 1)
except:
	print(0)

