#!/bin/bash

# Prompt the user to enter the file name
read -p "Enter the file name: " file_name

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: The specified file does not exist."
    exit 1
fi

# Prompt the user to enter the backup location
read -p "Enter the backup location: " backup_location

# Check if the backup location exists, if not, create it
if [ ! -d "$backup_location" ]; then
    mkdir -p "$backup_location"
fi

# Get the current timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Extract the file extension (if any)
extension="${file_name##*.}"

# Create the backup filename with the timestamp appended
backup_filename="${file_name%.*}_${timestamp}.${extension}"

# Perform the backup by copying the file to the backup location
cp "$file_name" "$backup_location/$backup_filename"

echo "Backup created successfully: $backup_location/$backup_filename"

