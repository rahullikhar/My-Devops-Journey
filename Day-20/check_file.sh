#!/bin/bash

# The file path is passed as the first argument when running the script
TARGET_FILE=$1

if [ -z "$TARGET_FILE" ]; then
    echo "Please provide a file name. Usage: ./check_file.sh <filename>"
    exit 1
fi

if [ -f "$TARGET_FILE" ]; then
    echo "Success: '$TARGET_FILE' exists and is a regular file."
else
    echo "Error: '$TARGET_FILE' does not exist in this location."
fi