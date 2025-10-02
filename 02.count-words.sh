#!/bin/bash

inputfile=$1

if [ -d "$inputfile" ]; then
  echo "The given input path is a directory."
  echo "Listing files inside the directory:"
  ls "$inputfile"
elif [ -e "$inputfile" ]; then
  echo "$(wc -l < $inputfile)"   # Count lines
  echo "$(wc -w < $inputfile)"   # Count words
  echo "$(wc -m < $inputfile)"   # Count characters
else
  echo "The file does not exist."
fi

