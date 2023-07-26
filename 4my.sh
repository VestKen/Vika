#!/bin/bash

read -p "Please enter your choice (name/operating system/memory): " vika

if [ "$vika" == "name" ]; then
    # Assuming `hostname` is a command to get the host name of the system
    hostname
elif [ "$vika" == "operating system" ]; then
    # Assuming `uname` is a command to get the operating system information
    uname
elif [ "$vika" == "memory" ]; then
    # Assuming `lshw -class memory | grep size` is a command to get memory information
    lshw -class memory | grep size
else
    echo "Invalid choice. Please enter 'name', 'operating system', or 'memory'."
fi

