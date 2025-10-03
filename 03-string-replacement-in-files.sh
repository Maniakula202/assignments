#!/bin/bash

source_dir=$1

if [ ! -d $source_dir ]; then 
    echo "Error:: Source directory $source_dir does not exists"
    exit 1
fi

FILES_TO_BE_CHANGE=$(find $source_dir -name "*.conf")

echo "$FILES_TO_BE_CHANGE"