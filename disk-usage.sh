#!/bin/bash
  
# Variables
threshold=90
filesystem="/home"
log_file="$HOME/Documents/logs/disk-space.log"
current_date=$(date +'%Y-%m-%d_%H-%M-%S')

log() {
    echo "[$(date)] $1" | tee -a "$log_file"
}

# getting t he current disk space
current_disk=$(df -h "$filesystem" | awk 'NR==2 { print $5 }' | sed 's/%//g') 2>>"$log_file"

# condition if it exceed the threshold
if [ "$current_disk" -gt "$threshold" ]; then
    log "ALERT: Disk usage on $filesystem is at $current_disk% (Threshold $threshold%)"
else
    log "OK: Disk usage on $filesystem is at $current_disk%  (Threshold $threshold%)"
fi