#!/bin/bash
file=~/.screen_rotation
if [ -f "$file" ]
then
    echo 0 > file 
fi

rotation=$(cat $file)

xrandr -o $rotation

echo $((rotation^1)) > $file