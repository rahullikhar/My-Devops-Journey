# Day 27 - System Health Check

This script helps you check if your Linux system is working normally.

## What it checks

- System name and OS details
- How long the system has been running
- Current users logged in
- Memory usage
- Disk space usage
- CPU usage
- Top running processes

## Script file

- `system_health_check.sh`

## How to run

```bash
chmod +x system_health_check.sh
./system_health_check.sh
```

## Example output

You will see information like:

- hostname
- kernel version
- memory usage
- disk space
- CPU status
- running processes

## Why this is useful

This helps you quickly understand whether the system is healthy or if there is a problem such as:

- low memory
- full disk
- high CPU usage
- too many running processes

## Simple explanation

The script collects basic system information and prints it on the screen so you can monitor the health of your server or machine.
