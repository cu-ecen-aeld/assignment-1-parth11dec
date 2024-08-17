#!/bin/bash

WRITEDIR=/tmp/aeld-data

# Check for required arguments
if [ $# -ne 2 ]; then
  echo "Error: Two arguments required: writefile and writestr"
  exit 1
fi

writefile="$1"
writestr="$2"

# Extract the directory path
dir=`dirname $writefile`

# Make nested directories
mkdir -p $dir

# Create the file and write the content
if ! echo "$writestr" > "$writefile"; then
  echo "Error: Could not create file '$writefile'"
  exit 1
fi
