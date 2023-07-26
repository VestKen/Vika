#!/bin/bash

read -p "Please enter file: " var

if [ -e "$var" ]; then
    echo "File '$var' exists."
    # To count files in a directory, use ls -l | grep -v '^d' | wc -l
    count=$(ls -l "$var" | grep -v '^d' | wc -l)
    echo "Number of files in '$var': $count"
else
    echo "File '$var' does not exist. Please try again."
fi

