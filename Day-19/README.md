# Disk Space Alarm

This script monitors the root (`/`) directory of a Linux server and triggers an alert if the disk usage exceeds a specified threshold (default is 80%).

## How it Works
It uses the `df` command to check disk space, `awk` to extract the exact column containing the usage percentage, and `sed` to strip away the `%` sign so the script can compare the numbers mathematically.

## Usage
1. Make the script executable: `chmod +x disk_alert.sh`
2. Run the script: `./disk_alert.sh`
