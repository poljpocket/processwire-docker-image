#!/usr/bin/env python3
import subprocess

versions = {
    "dev": "dev",
    "3.0.210": "210",
    "3.0.227": "227",
    "3.0.229": "229",
    "3.0.244": "244",
    "3.0.246": "246",
    "3.0.255": "255",  # latest
}

for version, folder in versions.items():
    print(f"building image for version {version}")
    subprocess.run(["docker", "build", "-t", f"poljpocket/processwire:{version}", f"./{folder}"], check=True)

latest = list(versions.keys())[-1]
print(f"updating 'latest' tag to {latest}")
subprocess.run(["docker", "tag", f"poljpocket/processwire:{latest}", "poljpocket/processwire:latest"], check=True)
