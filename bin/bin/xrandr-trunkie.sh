#!/bin/bash
xrandr --output DP-2 --mode 3840x2160 --primary --dpi 96  --pos 0x0\
    --output HDMI-0 --mode 1920x1080 --below DP-2 --rotate normal --pos 0x2160\
    --output HDMI-1 --mode 1920x1080 --right-of HDMI-0 --rotate normal --pos 1920x2160
