#!/bin/sh
xidlehook --timer 5 'xset dpms force off' 'xset dpms force on; xset -dpms' \
    --timer 300 'systemctl suspend' '' &
pid=$!
betterlockscreen -l dim
kill $pid

