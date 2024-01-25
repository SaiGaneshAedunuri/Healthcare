#!/usr/bin/env bash

read -p "Enter source folder path which is to be copied :" source

read -p "Enter destination folder path :" destination
if [ ! -d "$source" ]; then
	echo "Source folder was not exist."
	exit 1
fi

if [ ! -d "$destination" ]; then
	echo "Creating the new destination folder: $destination"
	mkdir -p "$destination"
fi

#command to copy all files of one folder to another folder

cp -r "$source"/* "$destination"/
echo "Successfully copied"
