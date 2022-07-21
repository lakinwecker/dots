#!/bin/bash
#xrandr
xrandr --auto --output DP1 --off
xrandr --auto --output DP2 --off
xrandr --auto --output VIRTUAL-1 --off
xrandr --auto --output HDMI-1 --off
xrandr --auto --output HDMI-2 --off
xrandr --auto --output VIRTUAL-1 --off
xrandr --auto --output eDP1 --mode 1920x1080
xrandr --auto --output DP3 --mode 3440x1440 --rate 100 --right-of eDP1
gsettings set org.gnome.desktop.interface scaling-factor 2
~/bin/choose-wallpapers.py && ~/bin/wallpaper.py
~/bin/polybar.sh
