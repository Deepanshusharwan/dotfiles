#!/usr/bin/env bash

# Prompt user for directory name
read -p "Enter directory name: " name

# Check if input is empty
if [[ -z "$name" ]]; then
    echo "Error: Directory name cannot be empty."
    exit 1
fi

# Create the directory if it doesn't exist
mkdir -p "$name"

# Change into the directory and start a new shell session
cd "$name" || exit 1
exec $SHELL  # Starts a new shell so the user stays in the directory

