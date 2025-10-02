#!/bin/bash

inputfile=$1

if [ -d "$inputfile" ]; then
  echo "The given input path is a directory."
  echo "Listing files inside the directory:"
  ls "$inputfile"
elif [ -e "$inputfile" ]; then
  echo "File exists."
  if [ -r "$inputfile" ]; then
    echo "File is readable."
  else
    echo "File is not readable."
  fi
  if [ -w "$inputfile" ]; then
    echo "File is writable."
  else
    echo "File is not writable."
  fi
else
  echo "The file does not exist."
fi
