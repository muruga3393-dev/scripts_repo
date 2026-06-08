#!/bin/sh
#Pinging multiple server ips

for ip in `cat /home/muruga/scripts/server_ips`
	do
		ping -c1 $ip 2>&1 > /dev/null
		if [ $? -eq 0 ];
		then
			echo $ip is reachable
		else
			echo $ip is not reachable
		fi
	done
