#!/bin/bash

# Tallennetaan komentoriviparametrit muuttujiin

luku1=$1
luku2=$2
echo "Annoit luvut: $luku1 ja $luku2"

# Suoritetaan laskutoimitukset

summa=$(($luku1 + $luku2))
erotus=$(($luku1 - $luku2))
tulo=$(($luku1 * $luku2))

# Tulostetaan tulokset

echo "Lukujen $luku1 ja $luku2 summa on: $summa"
echo "Lukujen $luku1 ja $luku2 erotus on: $erotus"
echo "Lukujen $luku1 ja $luku2 tulo on: $tulo"