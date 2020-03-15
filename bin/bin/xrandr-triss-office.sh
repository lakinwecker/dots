#!/bin/bash
xrandr --auto --output HDMI-2 --mode 1920x1080 --right-of eDP-1
xrandr --auto --output eDP-1 --mode 1920x1080 --left-of HDMI-2
# gsettings set org.gnome.desktop.interface scaling-factor 2
