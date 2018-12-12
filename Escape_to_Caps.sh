#!/bin/bash

cd /home/hkandula/Projects/Projects_Done/my_scripts
if [ $? != 0 ]
then
    echo "CD into my_scripts folder failed"
fi

if [ "$1" == "revert" ]
then
    echo "Reverting back to the original key configuration"
    `xmodmap /home/hkandula/.Xmodmap_orig.xmod`
    if [ $? != 0 ]
    then
        echo "Reverting back to original configuration failed"
    fi
else
    echo "Running xmodmap to map Caps lock to Escape"
    `xmodmap /home/hkandula/.Xmodmap`
    if [ $? != 0 ]
    then
        echo "Mapping failed"
    fi
fi
