#!/usr/bin/bash

if [[ -d $1 ]]; then
    echo 'Creating zip file...'
    zip -r $1.zip $1 -x "$1/env*"
    echo $'\n'$1.zip created
else
    echo "$1 is not a directory."
    exit 1
fi

