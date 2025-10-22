#!/bin/bash
# Exercise 4: Disk Space Alert
# Goal: Learn system command usage, conditionals, thresholds, and colored output

# Color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m" # No Color

# Set alert threshold (in percentage)
THRESHOLD=80

# Function to check disk usage
check_disk_usage() {
    echo "🔍 Checking disk space usage..."
    echo

    df -h --output=pcent,target | tail -n +2 | while read usage mountpoint; do
        # Remove % sign
        usage=${usage%\%}

        # Validate numeric
        if ! [[ "$usage" =~ ^[0-9]+$ ]]; then
            echo -e "${YELLOW}Warning:${NC} invalid data for $mountpoint"
            continue
        fi

        if (( usage >= THRESHOLD )); then
            echo -e "${RED}⚠️  High usage: $usage% on $mountpoint${NC}"
        else
            echo -e "${GREEN}✅ OK: $usage% on $mountpoint${NC}"
        fi
    done
}

# Run the function
check_disk_usage
