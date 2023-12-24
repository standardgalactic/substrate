#!/usr/bin/bash

# Path to the original image
original_image="image.png"  # Replace with your image path

# Extract the base name of the original image without extension
base_name=$(basename "$original_image" | cut -d. -f1)

# Thumbnail sizes
sizes=(1 10 20 30 40 50 60 70 80 90 100 120)

# Loop through each size and create a thumbnail
for size in "${sizes[@]}"; do
    convert "$original_image" -resize "${size}x${size}" "${base_name}_thumbnail_${size}x${size}.jpg"
done

