#!/bin/bash
xrandr --auto --output HDMI-0 --mode 3840x2160 --right-of DP-0 --dpi 96 --pos 0x1920
xrandr --auto --output DP-0 --mode 1920x1080 --left-of HDMI-0 --pos 0x0
xinput --map-to-output "Melfas LGD AIT Touch Controller" DP-0
