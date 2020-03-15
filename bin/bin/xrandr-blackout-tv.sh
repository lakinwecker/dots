#!/bin/bash
xrandr --auto --output HDMI-0 --mode 1920x1080 --rotate right --left-of DVI-D-0
xrandr --auto --output DVI-D-0 --mode 1920x1080 --rotate right --left-of DP-0
xrandr --auto --output DP-0 --mode 3840x2160 --dpi 120 --right-of DVI-D-0 --primary
xrandr --auto --output HDMI-1 --mode 3840x2160 --dpi 120 --same-as DP-0
# gsettings set org.gnome.desktop.interface scaling-factor 2
