#!/bin/bash

# Function to check available disk space
check_capacity() {
    local backup_dir="$1"
    local log_file="$2"
    local capacity_threshold="$3"

    used_percentage=$(df "$backup_dir" | awk 'NR==2 {print $5}' | sed 's/%//')

    if [[ $? -ne 0 ]]; then
        echo "Error checking disk capacity!"
        log_action "Error checking disk capacity in $backup_dir" "$log_file"
        return 1  # Exit with error code if capacity check fails
    fi

    echo "Current disk usage in $backup_dir: $used_percentage%"
    if (( used_percentage > capacity_threshold )); then
        echo "Warning: Capacity at $used_percentage%. Consider freeing up space."
        log_action "Capacity warning: $used_percentage% used in $backup_dir" "$log_file"
    fi
}