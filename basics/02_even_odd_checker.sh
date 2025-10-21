#!/bin/bash
# 🐚 Exercise 2: Enhanced Even/Odd Checker
# Goal: Learn conditionals, loops, functions, and input validation

# Color codes for output
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
NC="\033[0m" # No Color

# Function to check if a number is even or odd
check_even_odd() {
    local num=$1
    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo -e "${YELLOW}Warning:${NC} '$num' is not a valid integer."
        return
    fi

    if (( num % 2 == 0 )); then
        echo -e "${GREEN}$num is even${NC}"
    else
        echo -e "${RED}$num is odd${NC}"
    fi
}

# Read numbers from user input
read -p "Enter numbers separated by space: " -a numbers

# Loop through each number and check
for n in "${numbers[@]}"; do
    check_even_odd "$n"
done
