#!/bin/bash
              
# Create a script that have a function that changes services listening ports (80 x2) and default page (index.html) defined in example.conf.
# New values are given as command line arguments during the script startup. Only one port is given and it's used for both fields.
# NOTE: Script should overwrite the default values, not every possible value in that spot (think that those are values after the apt install command)
# Hints:
# Sed command needs some option to write the changes.


function change_values {
    new_port="$1"
    new_page="$2"

    sed -r -i "s/80/${new_port}/g" example.conf
    sed -r -i "s/index.html/${new_page}/" example.conf
}

change_values "$1" "$2"