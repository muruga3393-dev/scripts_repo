#!/bin/bash
#script which is used to create user account

echo "Enter the user account which you want to create:"
read user
echo "Checking whether user account is exists"
echo "Wait for few mins to check"

cat /etc/passwd | grep -i $user

if [ $? -eq 0 ];
then
	echo $user is already exists
else
	echo $user will be created, mention description you want to specify:
	read desc
	echo "Do you want to give specific user ID(yes/no):"
	read ans
	if [ $ans == yes ];
	then
		echo "Mention user id: "
	read id
	echo Checking whether user id is already exists or not
	cat /etc/passwd | grep $id
	if [ $? -eq 0 ];
	then
		echo $id is already exists
	else
		useradd -c "$desc" -u $id $user
		echo $user is created 
	fi
else
	useradd -c "$desc" $user
	echo $user is created
	fi

	
fi

