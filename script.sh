#!/bin/bash

# Check if both directory and audio track number arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <audio_track_number>"
    exit 1
fi

# Specify the directory containing MKV files
directory="$1"
audio_track_number="$2"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found: $directory"
    exit 1
fi

# Iterate through MKV files in the directory
for file in "$directory"/*.mkv; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Use mkvmerge to change audio track
        mkvmerge -o "${file%.mkv}_new.mkv" --audio-tracks "$audio_track_number" "$file"
        echo "Audio track changed to $audio_track_number for: $file"
    fi
done

echo "Audio track change process completed."
