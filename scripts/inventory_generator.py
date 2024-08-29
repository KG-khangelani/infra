#!/usr/bin/env python

import json

with open('tofu_outputs.json') as f:
    outputs = json.load(f)

inventory = {
    "all": {
        "hosts": [],
        "vars": {}
    }
}

if "kali_omen_ip" in outputs:
    inventory["all"]["hosts"].append(outputs["kali_omen_ip"]["value"])

if "old_machine_ip" in outputs:
    inventory["all"]["hosts"].append(outputs["old_machine_ip"]["value"])

print(json.dumps(inventory, indent=2))
