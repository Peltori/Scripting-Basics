#!/bin/bash

# Create a script that reads cars.csv file.
# File that is read must be given at the script startup as a command line argument.
# Script reads information from the file and prints the values to the user.

# Output format:
# --- Line 1 ---
# Manufacturer: X
# Model: X
# Color: X
# Year: X
# --- Line 2 ---
# Manufacturer: Y
# Model: Y
# Color: Y
# Year: Y

while IFS="," read -r -a line
do
    if [ "${line[0]}" != "Manufacturer" ]
    then
        printf "Manufacturer: %s\nModel: %s\nColor: %s\nYear: %s\n" "${line[0]}" "${line[1]}" "${line[2]}" "${line[3]}"
        echo "---"
    fi
done < "$1"