#!/bin/bash
# pre", the second either "suspend", "hibernate", or "hybrid-sleep" depending on the chosen action. Immediately after


case $1 in 
    pre) 
        case "$2" in
            suspend|hibernate|hybrid-sleep)
                #runuser -l lakin -c DISPLAY=:0.0 /home/lakin/bin/wallpaper.py >> /home/lakin/pm.log
                runuser -l lakin -c /home/lakin/bin/fuzzy-lock.sh >> /home/lakin/pm.log
                echo "fuzzy.lock" >> /home/lakin/pm.log
                ;;
            *)
                ;;
        esac
        ;;
    *)
        ;;
esac
