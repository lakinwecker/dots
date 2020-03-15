#!/bin/bash
xrandr --output DP-0 --auto --mode 3840x2160 --primary --right-of DVI-D-0
xrandr --output DVI-D-0 --auto --mode 1920x1080 --rotate right --left-of DP-0
xrandr --output HDMI-0 --auto --mode 1920x1080 --rotate right --left-of DVI-D-0
# xrandr --output HDMI-1 --off
# xrandr --output HDMI-1 --off
# xrandr --output HDMI-1 --off
# gsettings set org.gnome.desktop.interface scaling-factor 2

/home/lakin/bin/choose-wallpapers.py
