#! /bin/bash/

# select obsidian dir, depth copy of all dirs, archive
cp -r $1 obsidian-backup
tar -cjf $2 obsidian-backup
rm -rf obsidian-backup

