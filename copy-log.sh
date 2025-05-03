#!/bin/bash

source_dir="$HOME/Documents/logs"
destination_dir="$HOME/Documents/tmp/logs"

read -p "Enter log name to copy (e.g logname.log): " log_file

source_file="$source_dir/$log_file"

if [[ ! -d "$destination_dir" ]]; then
        mkdir -p "$destination_dir" || { echo "ERROR: Failed to create destination directory!"; exit 1; }
fi

echo "Starting log collection. . ."

if [[ -f "$source_file" ]]; then
        echo "Copying '$log_file' from $source_dir to $destination_dir. . ."
        cp "$source_file" "$destination_dir"/
        echo "Log file '$log_file' copied to $destination_dir"
else
        echo "ERROR: File '$log_file' not found in $source_dir"
        exit 1
fi