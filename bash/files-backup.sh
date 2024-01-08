#! /bin/bash/

cp -r $1 fls-bckp
tar -cjf $2 fls-bckp
rm -rf fls-bckp

