#!/bin/bash

# Kysytään tiedoston nimi
read -p "Anna tiedoston nimi: " tiedosto

echo "luodaan $tiedosto kotihakemistoon"

# Luodaan tiedosto käyttäjän kotihakemistoon
touch ~/"$tiedosto-$(date +%Y-%m-%d)"