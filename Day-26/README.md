# System Information Dashboard

A custom system dashboard that delivers a clean, readable snapshot of server resources.

## How it Works
It parses the output of `hostname`, `uptime`, and `free -h`. It uses `grep` and `awk` to extract exactly the right memory columns, hiding the rest of the unnecessary system text.

## Usage
1. Make the script executable: `chmod +x sys_info.sh`
2. Run the script: `./sys_info.sh`