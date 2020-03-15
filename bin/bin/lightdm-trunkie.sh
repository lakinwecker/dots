#!/usr/bin/bash
mkdir -p /home/lakin/log/
pushd /home/lakin/bin/
./xrandr-trunkie.sh
./choose-wallpapers.py
./wallpaper.py
