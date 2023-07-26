#!/bin/bash

#read word
read -p "Please enter file:" var
if ["$var" == "2my_script.sh" == "4my.sh" == "bashcrawl" ==  " scripts" == "vika" == "3my.sh" == " 5my.sh" == " my_script.sh" == " test" `];then 

#write word
echo $var
#find a file or directory and how many fords in this file or direcrory
wc -w $var




else
	echo "Invalid choice. Please try again."
fi

