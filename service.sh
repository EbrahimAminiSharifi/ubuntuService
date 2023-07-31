#!/bin/bash

# Define the name of the first script and the PID file
script_name="curl_request.sh"
pid_file="/tmp/curl_request.pid"

while true; do
    # Check if the script is already running by checking the PID file
    if [ -f "$pid_file" ]; then
        pid=$(cat "$pid_file")
        if ps -p "$pid" > /dev/null; then
            echo "$script_name is already running with PID: $pid"
            sleep 1200  # Sleep for 20 minutes (20 minutes = 20 * 60 seconds)
            continue    # Continue to the next loop iteration
        else
            # Clean up the PID file if the process is not running
            rm "$pid_file"
        fi
    fi

    # Start the first script and save its PID in the PID file
    echo "Starting $script_name..."
    # Replace '/path/to/' with the actual path to the directory where 'curl_request.sh' is located.
    # You may also use an absolute path like '/home/your_username/path/to/'.
    cd /path/to/
    nohup ./$script_name >/dev/null 2>&1 &
    echo $! > "$pid_file"
    echo "$script_name started with PID: $!"

    # Sleep for 20 minutes before the next check
    sleep 1200  # 20 minutes = 20 * 60 seconds
done
