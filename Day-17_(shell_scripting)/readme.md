<img width="946" height="411" alt="image" src="https://github.com/user-attachments/assets/adb81b33-dbbf-4aa4-8310-8d20af23a9cf" />

# System Diagnostic Monitor

**Overview**

A lightweight, reliable shell utility designed for rapid system diagnostics. This script automates routine server health checks, providing instant visibility into system timestamps and active user sessions.

# Core Utilities Used

**date** : Captures current system time for log syncing.

**whoami** : Identifies the current execution context and active user.

# Execution

To deploy and run this utility on a Linux server:

# 1. Grant execution permissions:

    chmod 755 system_check.sh


# 2. Execute the script:

    ./system_check.sh


# Future Enhancements

**Integrate df -h for automated disk space monitoring.**

**Implement a cron schedule for daily diagnostic logging.**
