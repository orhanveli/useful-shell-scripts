#!/bin/bash

file="$1"

echo "Processing $file"

# Get the output filename without extension
output_file="${file%.*}_2channel.ac3"

# Use ffmpeg to convert the audio to 2 channels
# -y to overwrite the output file without asking
ffmpeg -i "$file" -b:a 192k -ac 2 -threads 2 "$output_file"

echo "Conversion complete for $file"
```