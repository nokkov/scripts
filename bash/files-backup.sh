#! /bin/bash/

# select obsidian dir, depth copy of all dirs, archive
cp -r $1 fls-bckp
tar -cjf $2 fls-bckp
rm -rf fls-bckp

