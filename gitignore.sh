#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
	exit 1
fi

temp=$(dirname $(which gitignore.sh))"/gitemps/$1"

if [ -f $temp ]; then
    cat $temp >> .gitignore
    #TODO consolidation
    exit 0
fi

echo "Unknown git template"
exit 1

