#!/bin/bash
# tracking probability I am checked in a train

datasheet=~/data/train.csv
columns="date,time,from,to,seat,checked"
if [ $# -ne 6 ]; then
    echo "expected 6 arguments $columns" 
    exit 1
fi

if [ ! -f $datasheet ]; then
    echo $columns > $datasheet
fi

today="$1"
if [ $1 == "today" ]; then
    today="$(date '+%Y-%m-%d')"
fi

towrite="$today,$2,$3,$4,$5,$6"
if [ ! -z $(grep "$towrite" $datasheet) ]; then 
    echo "already in db"
    exit 1 
fi

echo $towrite >> $datasheet
exit 1
