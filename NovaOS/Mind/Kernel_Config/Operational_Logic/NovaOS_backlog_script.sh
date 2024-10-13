#!/bin/bash

# Paths
LOG_FILE="/d/True Project Nova Dawn/Logs and Backups/Session_Logs_Workflow/Log_Session_02_FileManagementPractice.txt"
BACKUP_DIR="/d/True Project Nova Dawn/Logs and Backups/Backups_SafetyNet/"
LOG_FILE_PATH="/d/True Project Nova Dawn/Logs and Backups/Learning_Modules/backup_log.txt"

# Capacity monitoring thresholds
capacity_threshold=75  # Set your desired threshold (75% used disk space)

# Function to check available disk space
check_capacity() {
    used_percentage=$(df "$BACKUP_DIR" | awk 'NR==2 {print $5}' | sed 's/%//')
    echo "Current disk usage in $BACKUP_DIR: $used_percentage%"
    if (( used_percentage > capacity_threshold )); then
        echo "Warning: Capacity at $used_percentage%. Consider freeing up space."
        log_action "Capacity warning: $used_percentage% used in $BACKUP_DIR"
    fi
}

# Function to perform the backup
perform_backup() {
    echo "Starting backup..."
    log_action "Starting backup of $LOG_FILE to $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    cp "$LOG_FILE" "$BACKUP_DIR"
    if [[ $? -eq 0 ]]; then
        echo "Backup successful!"
        log_action "Backup successful"
    else
        echo "Backup failed!"
        log_action "Backup failed"
    fi
}

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE_PATH"
}

# Main script execution
check_capacity  # Check disk space before starting
perform_backup  # Perform the backup
