#!/bin/bash
xrandr
xrandr --auto --output eDP1 --mode 1920x1080 --dpi 94
xrandr --auto --output eDP1 --mode 1920x1080 --same-as DP3
gsettings set org.gnome.desktop.interface scaling-factor 2
