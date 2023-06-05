#/bin/bash

folder=~/.local/share/fonts/

mkdir -p "$folder"

for file in "$@"
do
    cp "$file" "$folder"
done

# cleaning and regenerating the cache
fc-cache -fE
