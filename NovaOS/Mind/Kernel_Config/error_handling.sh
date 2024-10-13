# Error Handling Script for Bootup Failures (NovaOS)

function bootup_fail {
    echo "Bootup failed. Generating report..."
    if [ ! -f "$session_logs" ]; then
        echo "Missing file: session_logs_last.txt" >> D:/Project_Nova_Dawn/NovaOS/Logs/bootup_log.txt
    fi
    if [ ! -f "$kernel_configs" ]; then
        echo "Missing file: kernel_configs_last.txt" >> D:/Project_Nova_Dawn/NovaOS/Logs/bootup_log.txt
    fi
    echo "Please provide the missing files and try booting again." >> D:/Project_Nova_Dawn/NovaOS/Logs/bootup_log.txt
}

bootup_fail
