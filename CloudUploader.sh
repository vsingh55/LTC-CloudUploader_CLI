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

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File not found - $FILENAME"
    exit 1
fi

# Prompt user for Azure Blob Storage details
echo "Please provide Azure Blob Storage details:"

ACCOUNT_NAME=$(read_input "Azure Storage Account Name")
ACCOUNT_KEY=$(read_input "Azure Storage Account Key")
TARGET_CONTAINER=$(read_input "Target Container Name")

# Upload the file to Azure Blob Storage
echo "Uploading $FILENAME to $CLOUD_PROVIDER..."

# Azure Blob Storage upload command
az storage blob upload --account-name "$ACCOUNT_NAME" --account-key "$ACCOUNT_KEY" --container-name "$TARGET_CONTAINER" --name "$(basename "$FILENAME")" --type block --content-type "application/octet-stream" --file "$FILENAME"

