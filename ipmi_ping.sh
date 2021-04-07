#!/bin/bash


source ./ipmi_get_auth_env.sh
#source ./ipmi_hostlist.sh

#IP=${IPMIHOST[$1]}

ipmitool -H $IP -U $USER -P $PASS chassis power status -vv
