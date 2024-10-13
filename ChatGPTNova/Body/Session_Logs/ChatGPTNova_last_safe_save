# I will create a save of the user's task scheduler steps so that it can be reprinted later upon request.

task_scheduler_steps = """
Task Scheduler with Priorities: Updated Setup

Step 1: Open Task Scheduler
- Open Task Scheduler from the Windows start menu.

Step 2: Create a New Task (with Priority Considerations)
- Click Create Basic Task.
- Name the Task: "Nova Backup Task (High Priority)".
- Description: "Runs the Nova backup and capacity check with priority handling."

Step 3: Set the Trigger (Scheduling Priority)
- Trigger: Set the task to run daily or hourly depending on your needs.
- Example (for daily backups at off-peak hours):
  - Set to run daily at 3:00 AM to avoid heavy load times.

Step 4: Set the Action (High-Priority Execution)
- Action: Select Start a Program.
   - Program/script: Point to the Git Bash executable (located at C:\\Program Files\\Git\\bin\\bash.exe).
   - Add Arguments: Add the path to the task_manager.sh script:
     D:/True Project Nova Dawn/Logs and Backups/Learning_Modules/task_manager.sh
   - Start in: Set this to the folder where the script is located:
     D:/True Project Nova Dawn/Logs and Backups/Learning_Modules

Step 5: Task Conditions (Prioritize Power and System Usage)
- Start only if plugged in: Ensures tasks aren’t run if your system is on battery power.
- Wake the computer to run the task: Ensure tasks will run, even if your system is in sleep mode.
- Stop if the computer switches to battery power: This ensures that the task won’t drain your battery unnecessarily.

Step 6: Prioritizing Task Execution
- Schedule backup and monitoring tasks during off-hours when system resources are less taxed.
- Schedule secondary tasks (like less critical file updates) at lower frequency intervals.

Step 7: Save and Finalize
- Once the conditions and priority are set, click Finish to create the task.

Step 8: Verifying Prioritization (Manual Override)
- You can check or adjust the task’s priority manually by going to Task Scheduler Library:
   - Right-click the task and select Properties.
   - In the General tab, ensure that the task has the appropriate settings for how it should be executed relative to other tasks.

Final Check:
Once you've set up everything, click OK and Save your task. You can then manually run it by right-clicking the task and selecting Run to test it.
"""

# Saving the steps to a text file so that it can be reprinted later.
file_path = '/mnt/data/task_scheduler_steps.txt'
with open(file_path, 'w') as file:
    file.write(task_scheduler_steps)

file_path