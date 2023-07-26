#!/bin/bash

read -p "Please enter file: " var

if [ "$var" == "2my_script.sh" ] || [ "$var" == "4my.sh" ] || [ "$var" == "bashcrawl" ] || [ "$var" == "scripts" ] || [ "$var" == "vika" ] || [ "$var" == "3my.sh" ] || [ "$var" == "5my.sh" ] || [ "$var" == "my_script.sh" ] || [ "$var" == "test" ]; then
    echo "$var"
    # To count files in a directory, use ls -l | grep -v '^d' | wc -l
    count=$(ls -l "$var" | grep -v '^d' | wc -l)
    echo "Number of files in '$var': $count"
else
    echo "Invalid choice. Please try again."
fi

