#!/bin/bash

read -p "Anna käyttäjänimi: " username

if [ $(id -u ${username}) ]
then
    echo "${username} already exists"
    exit 1
fi

# Luodaan uusi käyttäjä

useradd -m -U -s /bin/bash ${username}
echo "{$username} created with home directory and default shell set as bash shell"