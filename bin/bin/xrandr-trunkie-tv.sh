#!/bin/bash
xrandr --output DP-2 --mode 3840x2160 --primary --dpi 96  --pos 0x0\
    --output HDMI-0 --mode 3840x2160 -r 59.94 --dpi 96 --same-as DP-2 \
    --output HDMI-1 --off
