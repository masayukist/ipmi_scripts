#!/bin/bash

source ./ipmi_hostlist.sh

IP=${IPMIHOST[${1}]}
USER=${USERNAME[${1}]}
PASS=${PASSWORD[${1}]}

