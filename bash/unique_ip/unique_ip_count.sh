#! /bin/bash

echo 'path to file with ips: '

if ! [ -e $1 ]
then
    echo "No ip file provided"
    exit 1
fi

sort $1 | cut -d '' -f1 | uniq --count | sort -n | tail -1
