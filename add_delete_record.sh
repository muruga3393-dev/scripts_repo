#!/bin/bash
#script which is used to add/delete the record in the inventory file

echo please choose one of the below option 
echo 1. To check the record status in the inventory file
echo 2. To add record in the inventory file
echo 3. To delete record in the inventory file

read output

case $output in 
	1) echo Enter the hostname/ip address to check
		read data
		if grep -q $data /home/muruga/scripts/inventory
		then
			echo $data is exists
		else
			echo $data is not exists
		fi
		;;
	2) echo Enter the hostname to add
		read host

		if grep -q $host /home/muruga/scripts/inventory
		then
			echo $host record is already exists
			exit
		fi

		echo Enter the IP address to add
		read ip

		if grep -q $ip /home/muruga/scripts/inventory
		then
			echo $ip is already exists
			exit
		else
		echo Enter the description
		read desc	
		echo $host $ip $desc >> /home/muruga/scripts/inventory
		echo $host record has been added
		fi
		;;
	3) echo Enter the hostname/ip address to delete
		read hostip

		if grep -q $hostip /home/muruga/scripts/inventory
		then
		sed -i '/'$hostip'/d' /home/muruga/scripts/inventory
		echo $hostip record has been deleted
		else
		echo $hostip does not exists
		fi
		;;

esac
