#!/bin/bash

# Modify Task 3.
# User can give unlimited number of paths and given paths are saved in the array.
# Function takes an array as an argument.

function count_objects {
    local paths=("$@")

    for path in "${paths[@]}"
    do
        if [ "${path}" = "exit" ]
        then
            break
        fi
        local value=$(ls -A "${path}" | wc -l)
        echo "Objects in ${path}: ${value}"
    done
}

declare -a paths

while true
do
    read -p "Give a path and to quit type 'exit': " input

    if [ "${input}" = "exit" ]
    then
        break
    fi
    paths+=("${input}")
done

count_objects "${paths[@]}"