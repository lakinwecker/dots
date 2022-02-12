#!/bin/bash
xrandr
xrandr --auto --output eDP1 --mode 1920x1080
#xrandr --auto --output DP-1 --off
xrandr --auto --output DP3 --mode 1920x1080 --same-as eDP1
xrandr --auto --output VIRTUAL-1 --off
xrandr --auto --output HDM-1 --off
xrandr --auto --output HDM-2 --off
xrandr --auto --output VIRTUAL-1 --off
gsettings set org.gnome.desktop.interface scaling-factor 2
~/bin/choose-wallpapers.py ~/wallpapers/dracula/arch.png && ~/bin/wallpaper.py
~/bin/polybar.sh
