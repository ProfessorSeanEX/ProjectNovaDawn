#!/bin/bash

# Paths (Modify these based on your actual setup)
LOG_FILE="/d/True Project Nova Dawn/Logs and Backups/Session_Logs_Workflow/Log_Session_02_FileManagementPractice.txt"
BACKUP_DIR="/d/True Project Nova Dawn/Logs and Backups/Backups_SafetyNet/"
LOG_FILE_PATH="/d/True Project Nova Dawn/Logs and Backups/Learning_Modules/backup_log.txt"
CAPACITY_THRESHOLD=75  # Set your desired threshold

# Source the modules (assumes the module scripts are in the same directory)
source ./backup_module.sh
source ./capacity_monitoring_module.sh
source ./logging_module.sh

# Main script execution
check_capacity "$BACKUP_DIR" "$LOG_FILE_PATH" "$CAPACITY_THRESHOLD" &  # Run capacity check in the background
capacity_status=$?  # Capture the exit status of the capacity check

backup_file "$LOG_FILE" "$BACKUP_DIR" "$LOG_FILE_PATH"
backup_status=$?  # Capture the exit status of the backup

# Wait for all background tasks to complete
wait

# Handle errors
if [[ $capacity_status -ne 0 ]]; then
    echo "Disk capacity check failed. Please check the logs."
    exit 1  # Exit if the capacity check failed
fi

if [[ $backup_status -ne 0 ]]; then
    echo "Backup failed. Please check the logs."
    exit 1  # Exit if the backup failed
fi