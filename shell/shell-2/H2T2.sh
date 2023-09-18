#!/bin/bash

file=/etc/hosts

if [ -e ${file} ]
then
    echo "${file} exists"
    if [ -w ${file} ]
    then
        echo "You have permission to edit the file"
    else
        echo "You do not have permission to edit the file"
    fi
else
    echo "${file} does not exist"
fi