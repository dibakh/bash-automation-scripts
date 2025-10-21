#!/bin/bash
# Exercise 1: Greet User by Name
# Goal: Learn variables and basic output

# Ask user for their name
read -p "Enter your name: " name

# Check if input is empty
if [[ -z "$name" ]]; then
    echon "You didn't enter a name. Hello. Stanger!"
else
    # Greet user wuth a friendly message
    echo "Hello, $name! Welcome to Bash scripting!"
fi