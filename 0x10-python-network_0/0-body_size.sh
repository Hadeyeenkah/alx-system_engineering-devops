#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Send a request to the URL and store the response body in a temporary file
response=$(mktemp)
curl -s -o "$response" "$url"

# Get the size of the response body in bytes
size=$(stat -c %s "$response")

# Display the size
echo "$size"

# Clean up temporary files
rm "$response"
