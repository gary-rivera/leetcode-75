#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 [directory]"
    echo "Removes all .cpp files in the specified directory."
    echo "If no directory is specified, the current directory is used."
    exit 1
}

# Get the directory from the first argument or default to the current directory
directory="${1:-.}"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    usage
fi

# Find and remove all .cpp files in the specified directory
find "$directory" -maxdepth 2 -type f -name "*.cpp" -exec rm -v {} +

echo "All .cpp files in '$directory' have been removed."