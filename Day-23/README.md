# Know Yourself Script

This Bash script displays information about the current user and system date.

## What It Does

1. Shows the username of the person currently logged in.
2. Shows today's date and time.

## How to Run

You need Bash to run this script. On Linux or macOS:

1. Make the script executable:

   ```bash
   chmod +x Knowyourself.sh
   ```

2. Run the script:

   ```bash
   ./Knowyourself.sh
   ```

## Example Output

```text
You are logged in as: alex
Today is: Mon Sep 15 10:30:00 UTC 2026
```

## Commands Used

- `whoami` shows the current username.
- `date` shows the current date and time.

## Note

The current `Knowyourself.sh` file has an extra `N` at the end. Remove it to avoid a `command not found` message when the script runs.
