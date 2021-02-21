#!/usr/bin/python

import os
import random
import os.path
import sys

def random_wallpaper():
    possibilities = set()
    for root, _, files in os.walk(base_dir):
        for file in files:
            possibilities.add(os.path.join(root, file))

    return random.choice(list(possibilities))

base_dir = "/home/lakin/wallpapers"
ln_wallpaper1 = "cp \"{0}\" /tmp/.wallpaper1"

chmod_wallpaper = "chown lakin:lakin /tmp/.wallpaper1 /tmp/wallpapers.txt"

if len(sys.argv) == 2:
    wallpaper1 = sys.argv[1]
else:
    wallpaper1 = random_wallpaper()

open("/tmp/wallpapers.txt", "w").write("\n".join([wallpaper1]) + "\n")
os.system(ln_wallpaper1.format(wallpaper1))
os.system(chmod_wallpaper)
