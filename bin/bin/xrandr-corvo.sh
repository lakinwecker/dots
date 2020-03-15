#!/bin/bash
xrandr --auto --output LVDS-1 --mode 1920x1080 --dpi 94
xrandr --auto --output VGA-1 --off
gsettings set org.gnome.desktop.interface scaling-factor 2
