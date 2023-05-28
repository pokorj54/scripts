#!/bin/bash
file=~/.screen_rotation
if []
    echo 0 
fi
rotation=$(cat $file)

xrandr -o $rotation

echo $((rotation^1)) > $file