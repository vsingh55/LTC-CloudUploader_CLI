#!/bin/bash

# Cloud provider
CLOUD_PROVIDER="azure"
# Target container in the cloud (optional)
TARGET_CONTAINER="blobcloudlocal"

# Function to display usage information
function display_usage {
    echo "Usage: $0 <file_path> [options]"
    echo "Options:"
    echo "  -c, --container   Target container in the cloud"
    echo "  -h, --help        Display this help message"
}

