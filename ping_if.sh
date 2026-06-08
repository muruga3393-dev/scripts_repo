#!/bin/sh
#sample ping script to test client servers

#ipaddr=192.168.1.1

ping -c1 $1 2>&1 > /dev/null
if [ $? -eq 0 ];
then
	echo $1 is pinging
else
	echo $1 is not pinging
fi

