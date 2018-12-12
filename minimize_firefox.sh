#!/bin/bash

window_id=`xdotool search --name Firefox | tail -n 1`

`xdotool windowminimize $window_id`

if [ $? != 0 ]
then
    echo "Unable to minimize the window"
fi
