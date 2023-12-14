#! /bin/bash

function gitfast() {
    git add .
    git commit -m "$*"
    git push
}
