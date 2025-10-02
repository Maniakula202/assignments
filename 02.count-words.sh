#!/bin/bash

inputfile=$1

if [ $(id -u) -ne 0 ]; then
    echo "You do not have enough previlage to run this file"
    exit 1
fi

if [ -d "$inputfile" ]; then
    echo "The given input path is a directory."
    echo "Listing files inside the directory:"
    ls "$inputfile"
elif [ ! -e "$inputfile" ]; then
    echo "The file does not exist."
elif [ ! -s "$inputfile" ]; then
    echo "The file is empty."
else
    echo "Line count: $(wc -l < "$inputfile")"
    echo "Word count: $(wc -w < "$inputfile")"
    echo "Character count: $(wc -m < "$inputfile")"
fi
