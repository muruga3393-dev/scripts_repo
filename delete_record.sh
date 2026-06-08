#!/bin/bash
#script which is used to delete record from the server inventory file

echo Please enter the hostname/Ip address
read host

grep -q $host /home/muruga/scripts/inventory

if [ $? -eq 0 ];
then
	sed -i '/'$host'/d' /home/muruga/scripts/inventory
	echo $host record has been deleted from the inventory file
else
	echo $host record is not found in the inventory file
fi

