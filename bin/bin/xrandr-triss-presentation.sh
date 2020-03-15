#!/bin/bash
xrandr --auto --output HDMI-2 --mode 1920x1080 --same-as eDP-1
xrandr --auto --output eDP-1 --mode 1920x1080 --same-as HDMI-2
# gsettings set org.gnome.desktop.interface scaling-factor 2
