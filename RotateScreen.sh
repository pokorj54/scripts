#!/bin/bash

# Rotates screen left if it is normal or vice versa.

randr=gnome-randr # alternative to randr on wayland using GNOME Manjaro
file=~/.screen_rotation
screen_name=eDP-1

if [ $# -eq 0 ]
then
    prev_rotation=$("$randr" | grep rotation)
    echo $prev_rotation
    echo ==============
    case "$prev_rotation" in

        *normal*)
            rotation=left
            ;;

        *)
            rotation=normal
            ;;
    esac
elif [ $# -eq 1 ]
then
    rotation="$1"
else
    echo Wrong number of arguments.
    exit 1
fi

"$randr" --output "$screen_name" --rotate $rotation
