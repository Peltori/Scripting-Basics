#!/bin/bash

# Create a script that asks URL from the user and a function that tries to ping it with a 1 package.
# If ping is successfull, return a exit code 0.
# If not, return a exit code 1.
# Based on the exit code that the function returned, print outcome to user.

function URL {
    ping -c 1 ${osoite}

}

read -p "Anna URL osoite: " osoite
URL

if [ ${?} -ne 0 ]
then
    echo "cannot ping: ${osoite}"
    exit 1
else
    echo "ping successfull: ${osoite}"
    exit 0
fi