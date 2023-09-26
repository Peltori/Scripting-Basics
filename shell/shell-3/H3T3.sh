#!/bin/bash

# Modify Task 2.
# Create a script that prints a number of objects in a given directory to the user. The path is asked from the user



function count_objects {
    read -p "Give a path: " path
    local value=$(ls -A "${path}" | wc -l)
    echo "${value}"
}

count_objects