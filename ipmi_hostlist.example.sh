#!/bin/bash

declare -A IPMIHOST
declare -A USERNAME
declare -A PASSWORD

IPMIHOST=(
	["host1"]="172.20.60.202"
)

USERNAME=(
	["host1"]="ADMIN"
)

PASSWORD=(
	["host1"]="ADMIN"
)

if [ "${1}" = "" ]; then
    echo Error: one argument required as hostname.
    exit
fi

IP=${IPMIHOST[$1]}

if [ "$IP" = "" ]; then
    echo Error: the host is not in IPMIHOST.
    exit
fi
