#!/bin/bash

operation="- + '*' / Exit"

PS3="Choose operation: " # Set PS3-promt empty

select x in ${operation}
do
    if [ ${x} = "Exit" ]
    then
        break
    
    # Erotus
    elif [ ${x} = "-" ]
    then
        read -p "Anna luku1: " luku1
        read -p "Anna luku2: " luku2
        erotus=$((${luku1} - ${luku2}))
        echo "Lukujen ${luku1} ja ${luku2} erotus on: ${erotus}"

    # Summa
    elif [ ${x} = "+" ]
    then
        read -p "Anna luku1: " luku1
        read -p "Anna luku2: " luku2
        summa=$((${luku1} + ${luku2}))
        echo "Lukujen ${luku1} ja ${luku2} summa on: ${summa}"
    
    # Jakolasku
    elif [ ${x} = "/" ]
    then
        read -p "Anna luku1: " luku1
        read -p "Anna luku2: " luku2
        jako=$(echo "scale=3; ${luku1} / ${luku2}" | bc)
        echo "Lukujen ${luku1} ja ${luku2} jakolasku on: ${jako}"
    
    # Tulo
    elif [ ${x} = "'*'" ]
    then
        read -p "Anna luku1: " luku1
        read -p "Anna luku2: " luku2
        tulo=$((${luku1} * ${luku2}))
        echo "Lukujen ${luku1} ja ${luku2} tulo on: ${tulo}"
    fi
done
echo "exiting..."