#!/bin/bash

# Tallennetaan komentoriviparametrit muuttujiin

tiedosto1=$1
tiedosto2=$2
tiedosto3=$3
echo "seuraavat tiedostot poistetaan kotihakemistosta: $tiedosto1 , $tiedosto2 ja $tiedosto3 "

# Suoritetaan tiedostojen poisto kotihakemistosta

rm ~/$tiedosto1 ~/$tiedosto2 ~/$tiedosto3

# Tulostetaan tulokset

echo "i deleted the following files: $tiedosto1 $tiedosto2  $tiedosto3 "