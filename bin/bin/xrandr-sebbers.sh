#!/bin/bash
xrandr
xrandr --auto --output eDP-1 --mode 1920x1080 --dpi 94
xrandr --auto --output VIRTUAL-1 --off
xrandr --auto --output HDM-1 --off
xrandr --auto --output HDM-2 --off
xrandr --auto --output VIRTUAL-1 --off
gsettings set org.gnome.desktop.interface scaling-factor 2
