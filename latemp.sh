#!/bin/bash

if [ "$#" -gt 1 ]; then
    echo "Illegal number of arguments"
	exit 1
fi

is_empty=$(ls -l | wc -l)

if [ $is_empty -ne 1 ] 
then
    echo Folder not empty
    exit 1
fi

case "$1" in
    beamer-fit) folder=beamer-fit ;;
    *) 
        echo Invalid name, available names are:
        echo beamer-fit 
        exit 1 
        ;;
esac

this_folder=$(dirname "$0")

cp -r "$this_folder"/latemps/$folder/* .
cp -r "$this_folder"/latemps/.gitignore .

exit $?
