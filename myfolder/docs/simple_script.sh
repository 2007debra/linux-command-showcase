#!/bin/bash 

# simple script showcasing my basic understanding

echo "Good day, $USER!"

echo "Today is: $(date)"

echo "You are in: $(pwd)"

# test to check if a folder exists exists

folder="/home/debbie/Linux-commands-showcase/myfolder/mydocs/images"

if [ -d "$folder" ]; then 
	echo " The folder '$folder' is in this directory. "
	echo "Here are the files in this folder"
	
	cd "$(dirname "$0")"
	ls
	echo "Script ran at $(date)" >> test_log.txt
else
	echo "The folder '$folder' is not in this directory. "

fi


