#!/bin/bash

XmodFile="~/.Xmodmap"

if [ ! -f $XmodFile ]
then
    cp ./Xmodmap ~/.Xmodmap
fi

if [ $? != 0 ]
then
    echo "cd into my_scripts folder failed"
fi

if [ "$1" == "revert" ]
then
    echo "Reverting back to the original key configuration"
    `sudo xmodmap ~/.Xmodmap_orig.xmod`
    if [ $? != 0 ]
    then
        echo "Reverting back to original configuration failed"
    fi
else
    echo "Running xmodmap to map Caps lock to Escape"
    `sudo xmodmap ~/.Xmodmap`
    if [ $? != 0 ]
    then
        echo "Mapping failed"
    fi
fi
