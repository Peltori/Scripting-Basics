#!/bin/bash

# Tällä "$@" saadaan aikaan se, että voidaan antaa loput määrä argumentteja

for argument in "$@"
do
    if [ -e ${argument} ] # Check if object exists
    then
        if [ -d ${argument} ] # Check if object is an directory
        then
            echo "${argument} is a directory"
        elif [ -f ${argument} ] # Check if object is a regular file
        then
            echo "${argument} is a regular file"
        else
            echo "${argument} is something else"
        fi
    fi
done