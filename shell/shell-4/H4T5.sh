#!/bin/bash

# Create a script that has 3 functions: mk_folder, download_image and change_perm.

# mk_folder function asks a new folder path from the user and creates the folder.
# download_image function downloads the following image to the previously created directory and renames it as a linux-t># change_perm function sets the folder and image permissions in a way that only owner has rights to them (rwx).

# Every possible variable substitution and command execution must be shown in the terminal during the execution.

set -x

function mk_folder {
    read -p "Anna kansion polku joka luodaan: " polku
    mkdir ${polku}
}

function download_image {
    wget -P ${polku} https://student.labranet.jamk.fi/~pekkju/script/tux.png
    mv ${polku}/tux.png ${polku}/linux-tux.png
}

function change_perm {
    chmod -R 700 ${polku}
}

mk_folder
download_image
change_perm