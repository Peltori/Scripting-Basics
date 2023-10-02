#!/bin/bash

# Create a script that installs the program using apt, based on the user input. (cowsay etc.)
# If the installation is successfull, tell that to the user and exit normally.
# If not, inform user and exit with a code 111.
# Hints: sudo permissions and apt options

function install {
    sudo apt install "${program}" -y

}

read -p "Anna ohjelman nimi joka asennetaan: " program
install

if [ ${?} -ne 0 ]
then
    echo "installation of the ${program} unsuccessfull"
    exit 111
else
    echo "installation of the ${program} successfull"
    exit 0
fi