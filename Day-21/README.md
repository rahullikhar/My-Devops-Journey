# Login Checker

A security monitoring script that checks active terminal sessions on a Linux server to see if a specific user is currently logged in.

## How it Works
It uses the `who` command to list all active sessions and pipes the output into `grep -wq` to search quietly for an exact match of the provided username.

## Usage
Pass the username you want to check as an argument when running the script.

1. Make the script executable: `chmod +x check_user.sh`
2. Run the script with a target user: `./check_user.sh root`
