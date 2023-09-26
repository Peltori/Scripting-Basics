#!/bin/bash

# Modify Exercise set 2, Task 5 (Create a script that mimics a simple calculator).
# Change the logic that all operations are calculated by using functions.


# funktions for calculation

function difference {
        read -p "Give number1: " number1
        read -p "Give number2: " number2
        difference=$((${number1} - ${number2}))
        echo "Difference of numbers ${number1} and ${number2} is: ${difference}"
}

function sum {
        read -p "Give number1: " number1
        read -p "Give number2: " number2
        sum=$((${number1} + ${number2}))
        echo "Sum of numbers ${number1} and ${number2} is: ${sum}"
}

function divide {
        read -p "Give number1: " number1
        read -p "Give number2: " number2
        divide=$(echo "scale=3; ${number1} / ${number2}" | bc)
        echo "Number ${number1} divided by ${number2} is: ${divide}"
}

function times {
        read -p "Give number1: " number1
        read -p "Give number2: " number2
        times=$((${number1} * ${number2}))
        echo "Number ${number1} times ${number2} is: ${times}"
}

operation="- + '*' / Exit"

PS3="Choose operation: " # Set PS3-promt empty

select x in ${operation}
do
    if [ ${x} = "Exit" ]
    then
        break
    
    # Difference
    elif [ ${x} = "-" ]
    then
        difference
        
    # Sum
    elif [ ${x} = "+" ]
    then
        sum
    
    # Divide
    elif [ ${x} = "/" ]
    then
        divide
    
    # times
    elif [ ${x} = "'*'" ]
    then
        times
    fi
done
echo "exiting..."