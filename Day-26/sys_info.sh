#!/bin/bash

echo "======================================"
echo "      SYSTEM HEALTH DASHBOARD         "
echo "======================================"

# Print the server's hostname
echo "Server Name : $(hostname)"

# Print how long the server has been running (uptime)
echo "Uptime      : $(uptime -p)"

# Extract just the used and total memory using free, grep, and awk
echo "Memory      :"
free -h | grep Mem | awk '{print "              Used: " $3 " / Total: " $2}'

echo "======================================"