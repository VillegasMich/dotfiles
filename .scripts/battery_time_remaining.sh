#!/bin/bash

# Extract battery information
battery_info=$(acpi -bi)
# Extract time remaining for charge/discharge
time_remaining=$(echo "$battery_info" | grep -oP '(\d{2}:\d{2}:\d{2})')

# Send notification with dunstify
dunstify -t 5000 -u normal "Time Remaining: $time_remaining"
