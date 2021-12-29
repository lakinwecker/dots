#!/bin/bash
hostname=`hostname`

killall polybar
if [ "$hostname" == "trunkie" ]; then
    killall polybar
    polybar trunkie-4k &
    #polybar trunkie-1080p-1 &
    #polybar trunkie-1080p-2 &
fi
if [ "$hostname" == "arry" ]; then
    killall polybar
    polybar arry &
fi
if [ "$hostname" == "scarlet" ]; then
    killall polybar
    polybar scarlet-dp-0 &
    polybar scarlet-dp-4 &
fi
if [ "$hostname" == "sebbers" ]; then
    killall polybar
    polybar sebbers-intel &
    polybar sebbers-nvidia &
    polybar sebbers-intel-dp-1 &
fi
