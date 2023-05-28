#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
	exit 1
fi

case "$1" in
    *.c) ext=".c" ;;
    *.cpp) ext=".cpp" ;;
    *.cc) ext=".cpp" ;;
    *.py) ext=".py" ;;
esac

if [ "$ext" == "" ]; then
	echo "Invalid or no suffix"
	exit 1
fi

cat $(dirname $(which temp.sh))/temps/temp$ext > $1

exit $?
