#!/bin/bash

source ./ipmi_get_auth_env.sh

ipmitool -H $IP -U $USER -P $PASS chassis power status
