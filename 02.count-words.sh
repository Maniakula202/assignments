#!/bin/bash

inputfile=$1

if [ $(id -u) -ne 0]; then
    echo "You do not have enough previlage to run this file"
fi

if [ -d "$inputfile" ]; then
  echo "The given input path is a directory."
  echo "Listing files inside the directory:"
  ls "$inputfile"
elif [ ! -s "$filename" ]; then
    echo "The file is Empty"
elif [ -e "$inputfile" ]; then
  echo "Line count: $(wc -l < $inputfile)"   # Count lines
  echo "Word count: $(wc -w < $inputfile)"   # Count words
  echo "Charechter count: $(wc -m < $inputfile)"   # Count characters
else
  echo "The file does not exist."
fi

