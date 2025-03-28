#!/bin/bash

# Create a script that prints a number of objects in the directory where you executed the script from.
# Script must consist a function called count_objects. Function must have one local variable, that will hold the actual value, before it's printed to the user.
# Hints:
# Function has a print functionality. wc command might be useful.

function count_objects {
    local value=$(ls -A | wc -l)
    echo "${value}"
}

count_objects