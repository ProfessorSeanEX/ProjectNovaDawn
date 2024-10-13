#!/bin/bash

# Function to log actions
log_action() {
    local message="$1"
    local log_file="$2"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$log_file"
}