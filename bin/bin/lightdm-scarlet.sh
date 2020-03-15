#!/usr/bin/bash
mkdir -p /home/lakin/log/
pushd /home/lakin/bin/
./xrandr-scarlet.sh
./choose-wallpapers.py
./wallpaper.py
