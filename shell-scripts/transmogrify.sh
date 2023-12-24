#!/usr/bin/bash

# Loop through each folder
for folder in {0000..0020}; do
    echo "Processing folder $folder..."

    # Change to the directory
    cd "$folder"

    # Process each image in the folder
    for image in *.png; do  # Assuming the images are in PNG format
        echo "Resizing $image..."
        convert "$image" -resize 250x250\! "$image"  # The exclamation mark forces exact 250x250 size
    done

    # Change back to the parent directory
    cd ..
done

echo "Thumbnail generation complete."


