#!/bin/bash

files="/tmp/CountPagesFiles"

to_search="$@"

if [ $# -eq 0 ]
then
    to_search=.
fi

find "$@" -type f -name "*.pdf" > $files

sum=0

while read file
do
    pages=$(pdfinfo "$file" | awk '/^Pages:/ {print $2}')
    sum=$(($pages+$sum))
done < $files

rm $files

echo $sum

exit 0
