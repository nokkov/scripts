#! /bin/bash

# now for manjaro only
which postgres

if (($? == 1)); then
    pamac install postgresql
else
    echo "PostgreSQL already installed"

fi
