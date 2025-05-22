#!/bin/bash 

# simple script showcasing my basic understanding

echo "Good day, $USER!"

echo "Today is: $(date)"

echo "You are in: $(pwd)"

# test to check if a folder exists exists

folder="images"

if [ -d "$folder" ]; then 
	echo " The folder '$folder' is in this directory. "
	echo "Here are the files in this folder"
	
	cd "$folder"
	ls
else
	echo "The folder '$folder' is not in this directory. "

fi


