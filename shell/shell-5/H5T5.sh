#!/bin/bash

# Create a script that reads superhero.json file.
# Script prints hero names to the user who selects which heroes powers or secret identity he/she wants to see.
# Script prints the desired values to the user.
# Script will continue asking what to do until user gives some string to exit to script (exit perhaps?).
# Hints:
# any iterations structure
# jq command



while true 
do
    echo "---"
    jq ".members[].name" superhero.json
    echo "---"
    read -p "Which hero's powers or identity you want to take a look at or type 'exit' to quit ? " choice
    
    if [ "${choice}" = "Molecule Man" ]
    then
        jq ".members[0].powers" superhero.json
        jq ".members[0].secretIdentity" superhero.json
    elif [ "${choice}" = "Madame Uppercut" ]
    then
        jq ".members[1].powers" superhero.json
        jq ".members[1].secretIdentity" superhero.json
    elif [ "${choice}" = "Eternal Flame" ]
    then
        jq ".members[2].powers" superhero.json
        jq ".members[2].secretIdentity" superhero.json
    elif [ "${choice}" = "exit" ]
    then
        break
    fi
done







#while true 
#do
#    
#    jq "jq ".members[].name" superhero.json"
#    read -p "Which hero's powers or identity you want to take a look at ? " choice
#    
#    if [ "${choice}" = "Molecule Man" ]
#    then
#        read -p "(Powers/Identity)? " choices
#        if [ "${choices}" = "Powers" ]
#        then
#            jq ".${choice}[].name" superhero.json
#    elif [ "${choice}" = "powers" ]
#    then
#        jq ".members[].powers" superhero.json
#    elif [ "${choice}" = "identity" ]
#    then
#        jq ".members[] | .name, .secretIdentity" superhero.json
#    elif [ "${choice}" = "exit" ]
#    then
#        break
#    fi
#done





#for name in members
#do
#    jq 'filters' file    
#done
#
#jq 'filters' file