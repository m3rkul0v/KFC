#!/bin/bash
mydir= /Users/merkulov/Desktop/KFC
if [ -d $mydir ]
then
echo "The $mydir directory exists"
cd $mydir
ls -l
else
echo "The $mydir directory does not exist"
fi
