#!/bin/bash

# Define the start and end time for the recording
start_time="19:00"
end_time="21:00"
current_time=$(date +"%H:%M")

# Convert times to minutes since start of day
start_minutes=$((10#$start_time / 100 * 60 + 10#$start_time % 100))
end_minutes=$((10#$end_time / 100 * 60 + 10#$end_time % 100))
current_minutes=$((10#$current_time / 100 * 60 + 10#$current_time % 100))

# Only record if the current time is within the specified range
if [ "$current_minutes" -ge "$start_minutes" ] && [ "$current_minutes" -le "$end_minutes" ]; then
    # Run the Python script to record for 2 minutes
    python3 We_Are_Listening.py 120
fi
