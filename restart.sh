#!/bin/bash

HOST=${1}

get_status () {
	./ipmi_chassis_power_status.sh ${1} | awk '{print $4}'
}

STATUS=`get_status ${HOST}`

if [ ${STATUS} = "on" ]
then
	./ipmi_soft.sh ${HOST}
	while [ ${STATUS} = "on" ]
	do
		sleep 1
		STATUS=`get_status ${HOST}`
	done
	sleep 10
fi

./ipmi_on.sh ${HOST}
