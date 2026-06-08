#!/bin/bash
#Simple script to compare the list users home directories with User account in /etc/passwd

for user in `ls -lrt /home/ | awk '{print $9}'`
do
	cat /etc/passwd | grep -i $user 2>&1 > /dev/null
	if [ $? -eq 0 ];
	then
		echo $user exist in /etc/passwd
	else
		useradd $user &> /dev/null
		echo created $user account in /etc/passwd
	fi
done

