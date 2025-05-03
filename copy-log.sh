#!/bin/bash

# Variable of static paths
source_dir="$HOME/Documents/logs"
destination_dir="$HOME/Documents/tmp/ao"
copy_log="$HOME/Documents/logs/copy-log.log"

read -p "Enter log name to copy (e.g <logname.log>): " log_file

# Variable of after user input
source_file="$source_dir/$log_file"
destination_file="$destination_dir/$log_file"


if [[ ! -d "$destination_dir" ]]; then
        mkdir -p "$destination_dir" || { echo "ERROR: Failed to create destination directory!"; exit 1; }
fi

if [[ -z "$log_file" ]]; then
        echo "User did not input anything." | tee -a "$copy_log"
        exit 1
fi

if [[ -f "$source_file" ]]; then
        echo "Copying '$log_file' from $source_dir to $destination_dir. . ." | tee -a "$copy_log"
        cp "$source_file" "$destination_dir"/
        echo "Log file '$log_file' copied to $destination_dir" | tee -a "$copy_log"
else
        echo "ERROR: File '$log_file' not found in $source_dir" | tee -a "$copy_log"
        exit 1
fi

if [[ ! -f $destination_file ]]; then
        echo "Fine not found" | tee -a "$copy_log"
else
        chmod 755 "$destination_file"
        echo "Permission set to 755 on $destination_file" | tee -a "$copy_log"
fi