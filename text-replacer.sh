#!/bin/bash

# This script replaces all instances of specific text in a text file.
# The target text and expected text are provided as parameters.

# Check if the file name is provided
if [ $# -lt 2 ]; then
  echo "Error: Please provide the file name and target text and expected text as parameters."
  exit 1
fi

file=$1
shift

# Loop through the parameters and replace the target text with the expected text
while [ $# -gt 0 ]; do
  target=$1
  expected=$2
  target_escaped=$(echo "$target" | sed 's/[\/&]/\\&/g')
  expected_escaped=$(echo "$expected" | sed 's/[\/&]/\\&/g')
  sed -i "s/$target_escaped/$expected_escaped/g" $file
  shift 2
done

echo "Replacement completed successfully!"

