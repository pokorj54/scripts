#/bin/bash

times=0
forbidden="discord facebook reddit"
while [ 1 ]
do
    used=0
    for f in $forbidden
    do
        xdotool getwindowfocus getwindowname | grep -i $f >/dev/null
        if [ $? -eq 0 ]
        then 
            used=1
            break
        else
            used=0
        fi
    done
    if [ $used -eq 1 ]
    then
        times=$(($times+1))
    else
        times=0
    fi

    if [ $times = 60 ]
    then
        notify-send "Productivity check"
    fi

    if [ $times = 120 ]
    then
        zenity --warning "Productivity check"
        times=0
    fi

    sleep 1
done
