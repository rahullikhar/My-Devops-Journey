#!/bin/bash

SOURCE_DIR=$1
BACKUP_DIR="/tmp/my_server_backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

if [ -z "$SOURCE_DIR" ]; then
    echo "Error: Please provide a folder to back up."
    echo "Usage: ./backup_manager.sh <folder_path>"
    exit 1
fi

# Create the backup destination folder if it does not exist
mkdir -p "$BACKUP_DIR"

# Define the final backup file name
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Compress the source folder quietly (-czf)
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Success! Backup saved to: $BACKUP_FILE"