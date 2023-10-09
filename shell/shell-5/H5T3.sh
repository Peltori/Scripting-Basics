#!/bin/bash

# Modify the task 2.
# Script should have function that adds a new entry to the cars.csv file based on the user input.
# Every value must be asked from the user separately and value/values added should be given to the function as an argument.
# Hints:
# Remember delimiters.
# One string might be easier than multiple --> how you can combine multiple strings (concatenate)?

function add_car {
    manufacturer="$1"
    model="$2"
    color="$3"
    year="$4"

    new_car="${manufacturer},${model},${color},${year}"
    echo "${new_car}" >> "cars.csv"
}


read -p "Give a car manufacturer: " manufacturer
read -p "Give a car model: " model
read -p "Give a car color: " color
read -p "Give a car year: " year
echo "You gave the following values: ${manufacturer} ${model} ${color} ${year}"

add_car "${manufacturer}" "${model}" "${color}" "${year}"

while IFS="," read -r -a line
do
    if [ "${line[0]}" != "Manufacturer" ]
    then
        printf "Manufacturer: %s\nModel: %s\nColor: %s\nYear: %s\n" "${line[0]}" "${line[1]}" "${line[2]}" "${line[3]}"
        echo "---"
    fi
done < "$1"