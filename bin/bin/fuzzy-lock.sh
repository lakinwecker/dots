#!/bin/sh -e
export DISPLAY=:0.0

# Change the wallpaper
#/home/lakin/bin/wallpaper.py
#sleep 1

# Take a screenshot
#echo "1" >> /home/lakin/fuzzy.log
test -f /tmp/$USER-screen_locked.png && rm /tmp/$USER-screen_locked.png
scrot /tmp/$USER-screen_locked.png

# Pixellate it 10x
#echo "2" >> /home/lakin/fuzzy.log
mogrify -scale 10% -scale 1000% /tmp/$USER-screen_locked.png >> /home/lakin/fuzzy.log

#mogrify -canny 0x1+10%+30% /tmp/$USER-screen_locked.png

# Lock screen displaying this image.
#echo "3" >> /home/lakin/fuzzy.log
i3lock -i /tmp/$USER-screen_locked.png >> /home/lakin/fuzzy.log
#echo "4" >> /home/lakin/fuzzy.log
#echo "*******" >> /home/lakin/fuzzy.log
