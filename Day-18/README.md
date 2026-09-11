# passwd.sh - Password Expiry Checker

A simple shell script to check user password expiry information on Linux systems.

## Description

This script uses the `chage` command to display when a user's password will expire. It helps system administrators quickly check password expiry status without complex commands.

## Prerequisites

- Linux/Unix system
- `chage` command installed (usually pre-installed on most Linux distributions)
- Bash shell

## Installation

1. Make the script executable:
```bash
chmod +x passwd.sh
```

## Usage

### Check current user's password expiry:
```bash
./passwd.sh
```

### Check a specific user's password expiry:
```bash
./passwd.sh username
```

### Examples:
```bash
# Check root user
./passwd.sh root

# Check current logged-in user
./passwd.sh

# Check another user
./passwd.sh john
```

## Output

The script displays:
- **Password expires**: The date when the password will expire
- **Password inactive**: Days after expiration before account becomes inactive
- **Last password change**: When the password was last changed
- **Account expires**: When the account itself will expire

Example output:
```
Password expires                        : Jan 15, 2027
Password inactive                       : -1
Last password change                    : Jan 15, 2024
Account expires                         : Never
```

## How it Works

The script:
1. Takes the username as an argument (or uses current user if not provided)
2. Runs `chage -1 username` to get detailed aging information
3. Filters and displays only the password expiry line

## Permissions

- To check your own password expiry: No special permissions needed
- To check other users' password expiry: Must run as `sudo` or with appropriate permissions

```bash
sudo ./passwd.sh username
```

## Notes

- If no username is provided, it checks the current logged-in user
- The `chage` command provides more detailed information than other methods
- For more detailed output, run: `chage -1 username`

## Related Commands

For more detailed password aging information:
```bash
chage -1 username          # Full details
passwd -S username         # Password status
```

---

**Author:** DevOps Team  
**Created:** 2026-09-09
