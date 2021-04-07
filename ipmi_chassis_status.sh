#!/bin/bash

source ./ipmi_get_auth_env.sh ${1}

ipmitool -H $IP -U $USER -P $PASS chassis status
