#!/bin/bash
#Sample script to kill process

echo "Enter the name of process which do you want to check"
read proc

if ps -ef | grep -i $proc | grep -v root
then

	id=`ps -ef | grep -i $proc | grep -v root | awk '{print $3}' | sort -u`
	kill -9 $id
	echo $proc is killed
else
	echo $proc is not running
fi
