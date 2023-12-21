#!/bin/bash

# Cloud provider
CLOUD_PROVIDER="azure"
# Target container in the cloud (optional)
TARGET_CONTAINER="" # Empty initially

# Function to display usage information
function display_usage {
    echo "Usage: $0 <file_path> [options]"
    echo "Options:"
    echo "  -c, --container   Target container in the cloud"
    echo "  -h, --help        Display this help message"
}

# Function to read user input
function read_input {
    read -p "$1: " INPUT
    echo "$INPUT"
}

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -c|--container)
            TARGET_CONTAINER=$2
            shift
            shift
            ;;
        -h|--help)
            display_usage
            exit 0
            ;;
        *)
            FILENAME=$1
            shift
            ;;
    esac
done
