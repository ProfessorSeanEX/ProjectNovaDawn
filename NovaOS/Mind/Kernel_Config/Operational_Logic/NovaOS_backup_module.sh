#!/bin/bash

# Function to perform the backup
backup_file() {
    local file_to_backup="$1"
    local backup_dir="$2"
    local log_file="$3"

    echo "Starting backup of $file_to_backup to $backup_dir"
    mkdir -p "$backup_dir"
    cp "$file_to_backup" "$backup_dir"

    if [[ $? -eq 0 ]]; then
        echo "Backup successful!"
        log_action "Backup successful for $file_to_backup" "$log_file"
    else
        echo "Backup failed!"
        log_action "Backup failed for $file_to_backup" "$log_file"
        return 1  # Exit with error code if backup fails
    fi
}