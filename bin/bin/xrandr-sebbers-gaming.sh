#!/bin/bash
xrandr
xrandr --auto --output eDP1 --mode 1920x1080 --dpi 94
xrandr --auto --output eDP1 --mode 1920x1080 --same-as DP3
xrandr --auto --output DP1 --mode 1920x1080 --same-as eDP1
gsettings set org.gnome.desktop.interface scaling-factor 2
