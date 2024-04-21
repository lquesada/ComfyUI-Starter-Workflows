#!/bin/bash
# Script to rename files in the output directory

# Define list A
declare -a listA=(
    "portrait, wearing white t-shirt"
    "resume picture, wearing a suit"
    "in the old town"
    "studio picture, eye contact, great lighting"
    "casual picture wearing jeans and a t-shirt, smiling"
    "casual picture wearing a coat"
)

# Define list B
declare -a listB=(
    "african man"
    "african woman"
    "european man"
    "european woman"
    "asian man"
    "asian woman"
    "icelandic man"
    "icelandic woman"
    "american man"
    "american woman"
    "man with short dark hair"
    "woman with short dark hair"
    "man with long dark hair"
    "woman with long dark hair"
    "young man with short blonde hair"
    "young woman with short blonde hair"
    "old man with long blonde hair"
    "old woman with long blonde hair"
)

# Initialize file counter
counter=1

# Loop over each item in listB
for itemB in "${listB[@]}"; do
    # Loop over each item in listA
    for itemA in "${listA[@]}"; do
        # Format new file name with padded counter and combined prompt
        new_name=$(printf "%03d_%s, %s.png" "$counter" "$itemA" "$itemB")

        # Find the next file to rename (alphabetically sorted)
        current_file=$(ls 2024*png | head -n 1)

        # Check if there is a file to rename
        if [[ -n $current_file ]]; then
            echo "Renaming '$current_file' to '$new_name'"
            # Convert to clean up possibly stale workflow metadata
            convert "$current_file" "$new_name"
            rm "$current_file"
        else
            echo "No more files to rename, stopping."
            break 2
        fi

        # Increment the file counter
        ((counter++))
    done
done

