#!/bin/bash

source_dir=$1

LOGS_FOLDER="/var/log/assignments"
SCRIPT_NAME=$( echo $0 | cut -d "."  -f1 )
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

mkdir -p $LOGS_FOLDER

if [ $(id -u) -ne 0 ]; then
    echo "Error:: Please run this script with root previlege" | tee -a $LOG_FILE
    exit 1
fi

if [ ! -d $source_dir ]; then 
    echo "Error:: Source directory $source_dir does not exists" | tee -a $LOG_FILE
    exit 1
fi

FILES_TO_BE_CHANGE=$(find $source_dir -name "*.conf")

while IFS= read -r filepath
do 
  echo "Processing: $filepath" | tee -a $LOG_FILE
  sed -i 's/FOO/BAR/g' $filepath &>>$LOG_FILE
  echo "Succesfully changed the word from FOO to BAR for the file: $filepath" | tee -a $LOG_FILE
done <<< $FILES_TO_BE_CHANGE
