#!/bin/bash

# Script Name: system_health_check.sh
# Description: A simple script to check server health for L1 Support.
# Author: Rahul Likhar

echo "===== System Health Check ====="

echo -e "\n[1] System Information"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
OS_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
echo "OS: ${OS_NAME}"

echo -e "\n[2] Uptime and Current Users"
uptime
who

echo -e "\n[3] Memory Usage"
free -h

echo -e "\n[4] Disk Usage"
df -h

echo -e "\n[5] CPU Usage"
top -bn1 | grep "Cpu"

echo -e "\n[6] Top Processes"
ps -eo pid,comm --sort=-pid | head

echo -e "\n===== Health Check Complete =====\n"