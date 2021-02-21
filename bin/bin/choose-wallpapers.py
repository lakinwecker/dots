#!/usr/bin/python

import os
import random
import os.path

base_dir = "/home/lakin/wallpapers"
ln_wallpaper1 = "cp \"{0}\" /tmp/.wallpaper1"

chmod_wallpaper = "chown lakin:lakin /tmp/.wallpaper1 /tmp/.wallpaper2 /tmp/.wallpaper3 /tmp/wallpapers.txt"

possibilities = set()
for root, dirs, files in os.walk(base_dir):
    for file in files:
        possibilities.add(os.path.join(root, file))

print(len(possibilities))
wallpaper1 = random.choice(list(possibilities))
open("/tmp/wallpapers.txt", "w").write("\n".join([wallpaper1]) + "\n")
os.system(ln_wallpaper1.format(wallpaper1))
os.system(chmod_wallpaper)
