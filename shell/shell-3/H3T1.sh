#!/bin/bash

# Create a script that asks values from the user until user types exit. 
# All the values are saved in array. Finally script prints out the whole array (line by line) using the following syntax: index: value.

values=()
#index=0

while true; do
    read -p "Anna arvoja ja lopettaaksesi kirjoita 'exit': " item

    if [ ${item} = "exit" ]
    then
        break
    fi
    
    values+=("${item}")
   # echo "index: ${index}, value: ${item}"
   # index=$(( index + 1))
done

for index in ${!values[@]}
do
    echo "index: ${index}, value: ${values[index]}"
done
