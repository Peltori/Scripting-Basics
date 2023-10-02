#!/bin/bash

# Create a script that prints 3 random numbers on the terminal and also generates a syslog message with a correlating number for each random number.
# Log message priority should be user.info.
# Hints: Special variable $RANDOM

num1=$RANDOM
num2=$RANDOM
num3=$RANDOM

echo "${num1}"
echo "${num2}"
echo "${num3}"

logger -p user.info "num1 = ${num1}"
logger -p user.info "num1 = ${num2}"
logger -p user.info "num1 = ${num3}"