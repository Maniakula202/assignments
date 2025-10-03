#!/bin/bash

source_dir=$1

if [ $(id -u) -ne 0 ]; then
    echo "Error:: Please run this script with root previlege"
fi

if [ ! -d $source_dir ]; then 
    echo "Error:: Source directory $source_dir does not exists"
    exit 1
fi

FILES_TO_BE_CHANGE=$(find $source_dir -name "*.conf")

while IFS= read -r filepath
do 
  echo "Processing: $filepath"
  sed 's/FOO/BAR/g' $filepath
  echo "Succesfully changed the word from FOO to BAR for the file: $filepath"
done <<< $FILES_TO_BE_CHANGE
