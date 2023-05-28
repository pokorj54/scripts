#!/bin/bash

for i in $HOME/School/PA1/Progtest*;do 
    a=0
done

for j in "$i"/*_out_win.txt;do
    if [ "$j" == "$i"'/*_out_win.txt' ]; then
        a=0
        break
    fi
    rm  $j
    a=$(($a+1))
done
echo "$a _out_win.txt files were deleted in $i"
exit 0
