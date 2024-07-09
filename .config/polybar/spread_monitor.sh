#!/bin/bash 

while true; do
    if xrandr | grep "HDMI-1-0 connected" > /dev/null; then
        xrandr --output --HDMI-1-0 --auto --right-of eDP-1
        break
    fi
    sleep 15
done
