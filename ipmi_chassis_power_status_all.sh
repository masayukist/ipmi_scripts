#!/bin/sh

source ./ipmi_hostlist.sh

for HOST in "${!IPMIHOST[@]}"; do
	echo -n "${HOST}: "
	./ipmi_chassis_power_status.sh ${HOST}
done


