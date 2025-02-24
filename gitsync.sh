#!/bin/bash


DIR=~/.gitsync/

if [ ! -d "$DIR" ]
 then
  echo "$DIR does not exist, creating."
  mkdir $DIR
  mkdir $DIR/r/
  mkdir $DIR/rw/
fi

if [ $# -ge "2" ] && [ "$1" = "register" ]
then 
    ln -s "$(pwd)" "$DIR/$2"
    exit 0
fi

shopt -s dotglob 

for dir in "$DIR/r/"*
do
    echo $dir
    cd $dir
    git pull --rebase
done 

for dir in "$DIR/rw/"*
do
    echo $dir
    cd $dir
    git pull --rebase
    git add .
    git commit -m "Auto-sync: $(date)" || echo "Nothing to commit".
    git push
done 

