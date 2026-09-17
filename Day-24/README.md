# Day 20: Automated Directory Backup

A system administration script that takes a target directory and securely compresses it into a timestamped archive file. 

## DevOps Use Case
Creating immediate, timestamped backups of configuration folders (like `/etc` or web directories) before deploying new application updates is a critical safety measure to prevent data loss.

## Usage
1. Make the script executable: 
   `chmod +x backup_manager.sh`
2. Run the script and pass the folder you want to back up: 
   `./backup_manager.sh /path/to/important_folder`

The script will automatically create a `/tmp/my_server_backups` directory and store your compressed `.tar.gz` archive safely inside.