#!/bin/bash

# Kysytään tiedoston polku josta kopioidaan
read -p "Anna polku tiedostoon jonka haluat kopioida : " polusta

# Kysytään tiedoston polku johon kopioidaan
read -p "Mihin hakemistoon haluat kopioida seuraavan tiedoston $polusta: " polkuun

cp $polusta $polkuun

echo "copied the $polusta to $polkuun !"