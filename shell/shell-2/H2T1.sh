#!/bin/bash

read -p "Give path to a file to be removed :" tiedosto

if [ -f ${tiedosto} ] && [ ! -s ${tiedosto} ]
then
    rm -r ${tiedosto}
else
    echo "File was not found or file is not regular file"
fi