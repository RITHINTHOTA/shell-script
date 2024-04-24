#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs


R="\e[31m"
G="\e[32m"
N="\e[0m"

if  [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G source directory exists $N"
else
    echo -e "$R please check the $SOURCE_DIRECTORY $N"
    exit1
fi

FILES=$(find $SOURCE_DIRECTORY -name "* .log" -mtime +14)

echo "Files to delete :$FILES"

while IFS= read -r line
do
  eho "Deleting file :$line"
 rm -rf $line
 done <<< $FILES