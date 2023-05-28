#!/bin/bash

args=("$@")
length=$(($(expr length ${args[0]})-2))
g++ -std=c++11 -Wall -pedantic -Werror -Wno-long-long -g ${args[0]} -o ${args[0]:0:$length}
err=$? 
if [ $err -eq 0 ]; then
    echo "Compilation successful" 
    if [ "${args[1]}" != "c" ]; then
    echo "Running program ${args[0]:0:$length}"
    ./${args[0]:0:$length}
    fi
fi
