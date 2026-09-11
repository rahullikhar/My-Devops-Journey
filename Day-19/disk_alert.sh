#!/bin/bash

# Set the maximum allowed disk usage percentage
THRESHOLD=80

# Grab the usage percentage for the root directory (/)
USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "CRITICAL: Disk space is running out! Currently at ${USAGE}%."
else
    echo "OK: Disk space is healthy at ${USAGE}%."
fi