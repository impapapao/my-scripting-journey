#!/bin/bash

# Base directory to audit
BASE_DIR=${1:-/home/to/directory}

# Define "bad" permission policy
BAD_PERM='777'

echo "Starting permission audit in directory: $BASE_DIR"

find "$BASE_DIR" \( -type f -o -type d \) -printf "%m %p\n" | while read perm item; do
         if [ "$perm" = "$BAD_PERM" ]; then
         echo "Item has risky permission ($perm): $item"
         fi
         
         done

echo "Audit Complete!"