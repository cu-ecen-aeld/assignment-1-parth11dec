#!/bin/bash

# Check for required arguments
if [ $# -ne 2 ]; then
  echo "Error: Two arguments required: writefile and writestr"
  exit 1
fi

writefile="$1"
writestr="$2"

# Create the file and write the content
if ! echo "$writestr" > "$writefile"; then
  echo "Error: Could not create file '$writefile'"
  exit 1
fi
