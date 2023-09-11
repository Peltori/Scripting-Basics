#!/bin/bash

# Kysytään hakemiston polku
read -p "Anna hakemiston polku: " polku

# Luetaan annetusta polusta objektien määrä
ls "$polku" | wc -l