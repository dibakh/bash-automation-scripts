#!/bin/bash
# Exercise 3: Sum of numbers
# Goal: Learn arithmetic, arrays, loops, functions, and input validation

# Color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
NC="\033[0m" # No Color

# Function to calculate sum of numbers 
calculate_sum(){
    local sum=0
    for num in "$@"; do
        if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
            echo -e "${YELLOW}Warning:${NC} '$num' is not a valid integer. Ignoerd. "
            continue
        fi 
        ((sum += num))
    done
    echo -e "${GREEN}Total sum: $sum${NC}"
}

# Read numbers from user
read -p "Enter numbers separated by space: " -a numbers

# Call funcrion with input numbers
calculate_sum "${numbers[@]}"