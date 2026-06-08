#!/bin/bash
#script which is used to add system inventory file

echo Please enter the hostname
read host

grep -q $host /home/muruga/scripts/inventory

if [ $? -eq 0 ];
then
	echo Error $host is already exists
	exit
fi

echo Please enter IP address
read ip

grep -q $ip /home/muruga/scripts/inventory

if [ $? -eq 0 ];
then
	echo Error $ip is already exists
	exit
fi

echo Please enter description
read desc

echo $host $ip $desc >> /home/muruga/scripts/inventory
echo Record has been added

