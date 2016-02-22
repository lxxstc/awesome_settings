#!/bin/bash

PATH=/home/lxxstc/local/rofi/bin/:$PATH

export PATH="$HOME/local/rofi/bin/":"$HOME/local/go/bin":"/home/lxxstc/local/qtalk":"$HOME/local/bin/":"~/local/eclipse":$PATH
export PATH=$PATH:/home/lxxstc/.screenlayout/;

RUN_FOLDER="$1"

if [[ -d $RUN_FOLDER ]]; then
    cd $RUN_FOLDER
    SELECTED=$(find . -maxdepth 2 -executable -type "l" -or -type "f" | \
                      tr -d "^\./" | \
                      rofi -dmenu -p ">> ")
    $RUN_FOLDER/$SELECTED >> /tmp/a.log
else
    rofi -show run
fi
