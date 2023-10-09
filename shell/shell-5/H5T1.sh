#!/bin/bash

# Create a script that asks values from the user until user decides to end the script.
# Given values are added to the end of file called animal.txt
# Finally script prints every value from the file.

while true
do
    read -p "Give values and to quit type 'exit': " input

    if [ "${input}" = "exit" ]
    then
        break
    else
        echo "${input}" | cat >> $HOME/animal.txt
    fi
done

cat animal.txt