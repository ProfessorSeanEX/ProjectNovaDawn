import os
from datetime import datetime

# Directory paths
log_dir = "D:/True Project Nova Dawn/Logs and Backups/Session_Logs_Workflow/"
template = """# Session Log Template

[Session Information]
- Date: {date}
- Start Time: [Insert Time]
- End Time: [Insert Time]

[Actions Taken]
- [Log your actions here]

[Reflections]
- [Log your reflections here]

[Next Steps]
- [Log next steps here]
"""

# Get the current date for the log filename
current_date = datetime.now().strftime("%Y-%m-%d")
log_filename = f"Log_Session_{current_date}.txt"

# Write the template to the new log file
with open(os.path.join(log_dir, log_filename), "w") as log_file:
    log_file.write(template.format(date=current_date))

print(f"New log file created: {log_filename}")