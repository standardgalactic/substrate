#!/usr/bin/bash

# Create the amalgamate directory if it doesn't exist
mkdir -p amalgamate

# Initialize a counter
counter=0

# Loop through subfolders
for dir in {0000..0030}; do
	if [ -d "$dir" ]; then
		# Find the first file in the directory
		file=$(find "$dir" -maxdepth 1 -type f | head -n 1)

		if [ -f "$file" ]; then
			# Copy the file to amalgamate with a new name
			cp "$file" "amalgamate/${counter}.png" # Replace '.extension' with the actual file extension
			((counter++))
		fi
	fi
done

