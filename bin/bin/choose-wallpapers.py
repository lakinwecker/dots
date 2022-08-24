#!/usr/bin/python

import os
import random
import os.path
import sys

base_dir = "/home/lakin/wallpapers"

def random_wallpaper():
    possibilities = set()
    for root, _, files in os.walk(base_dir):
        for file in files:
            possibilities.add(os.path.join(root, file))

    return random.choice(list(possibilities))


chmod_wallpaper = "chown lakin:lakin /tmp/.wallpaper1 /tmp/wallpapers.txt"

if len(sys.argv) == 2 and sys.argv[1] == "simon":
    base_dir = "/home/lakin/wallpapers/simon/"
    wallpaper1 = random_wallpaper()
elif len(sys.argv) == 2 and sys.argv[1] == "catppuccin":
    base_dir = "/home/lakin/wallpapers/catppuccin/wallpapers/landscapes"
    wallpaper1 = random_wallpaper()
elif len(sys.argv) == 2:
    wallpaper1 = sys.argv[1]
else:
    wallpaper1 = random_wallpaper()

open("/tmp/wallpapers.txt", "w").write("\n".join([wallpaper1]) + "\n")
os.system(chmod_wallpaper)
