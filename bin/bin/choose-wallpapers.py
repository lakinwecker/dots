#!/usr/bin/python

import os
import random
from os.path import join, getsize

base_dir = "/home/lakin/wallpapers"
ln_wallpaper1 = "cp \"{0}\" /tmp/.wallpaper1"
ln_wallpaper2 = "cp \"{0}\" /tmp/.wallpaper2"
ln_wallpaper3 = "cp \"{0}\" /tmp/.wallpaper3"

chmod_wallpaper = "chown lakin:lakin /tmp/.wallpaper1 /tmp/.wallpaper2 /tmp/.wallpaper3 /tmp/wallpapers.txt"

possibilities = set()
for root, dirs, files in os.walk(base_dir):
    for file in files:
        possibilities.add(os.path.join(root, file))

print(len(possibilities))
wallpaper1 = random.choice(list(possibilities))
wallpaper2 = random.choice(list(possibilities))
wallpaper3 = random.choice(list(possibilities))
open("/tmp/wallpapers.txt", "w").write("\n".join([wallpaper1, wallpaper2, wallpaper3]) + "\n")
os.system(ln_wallpaper1.format(wallpaper1))
os.system(ln_wallpaper2.format(wallpaper2))
os.system(ln_wallpaper3.format(wallpaper3))
os.system(chmod_wallpaper)
