# File Checker

A system administration script used to verify if a specific file exists on the server. This is commonly used in CI/CD pipelines to ensure configuration files or backups are present before running the next step of an automation.

## Usage
Pass the file path you want to check as an argument when running the script.

1. Make the script executable: `chmod +x check_file.sh`
2. Run the script with a target file: `./check_file.sh /etc/passwd`