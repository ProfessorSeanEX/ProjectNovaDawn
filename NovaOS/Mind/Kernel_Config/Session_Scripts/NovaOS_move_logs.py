import os
import shutil
from datetime import datetime

# Define source and destination directories
source_dir = "D:/True Project Nova Dawn/Logs and Backups/Session_Logs_Workflow/"
dest_dir = "D:/True Project Nova Dawn/Logs and Backups/Backups_SafetyNet/"

# Get current date to check logs for today
current_date = datetime.now().strftime("%Y-%m-%d")

# Loop through all files in the source directory
for filename in os.listdir(source_dir):
    if filename.startswith(f"Log_Session_{current_date}"):
        # Move the log file to the destination directory
        source_file = os.path.join(source_dir, filename)
        dest_file = os.path.join(dest_dir, filename)
        shutil.move(source_file, dest_file)
        print(f"Moved: {filename} to {dest_dir}")
    else:
        print(f"Skipped: {filename} (Not a log from today)")