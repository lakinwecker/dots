#!/bin/bash
xrandr --auto --output LVDS1 --mode 1920x1080 --left-of HDMI1
xrandr --auto --output HDMI1 --mode 1920x1080 --right-of LVDS1
gsettings set org.gnome.desktop.interface scaling-factor 2
