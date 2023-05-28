#!/bin/bash

if [[ $# -lt 1 ]] || [[ $# -gt 2 ]]
then 
    echo "wrong number of arguments"
    exit 1
fi

device=$(xsetwacom --list devices | grep -o 'id.*STYLUS'| grep -o '[0-9]*')

if [[ $1 =~ [a-zA-Z] ]]
then 
    xsetwacom set $device mode $1
    exit 0
fi

newarea=''
if [ $# = 2 ]
then
    newarea="0 0 $1 $2"
else
    times=$1
    area=$(xsetwacom get $device area)
    for n in $area
    do
        newarea=$newarea' '$(echo "result = $n*$times; scale=0; result / 1" | bc -l)
    done
fi 

echo "New area will be:" $newarea
xsetwacom set $device area $newarea

exit 0