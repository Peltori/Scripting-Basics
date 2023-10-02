#!/bin/bash

# Create a script that has a function called network_information that shows the following information:

# ip address:
# hostname:

# Log the messages in the syslog with a custom tag "network-information".
# Hints: Utilize arrays and ip or hostname commands with options

function network_information {
    hostname=$(hostname -s)
    ipaddress=$(hostname -i)
    infohost+=("${hostname}")
    infoip+=(${ipaddress})

    echo "ip address: ${infoip[0]}"
    echo "hostname: ${hostname}"
    logger -t "network-information" "ip address: ${infoip[0]} ja hostname: ${hostname}"
}

declare -a infohost
declare -a infoip

network_information