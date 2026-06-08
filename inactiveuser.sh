#!/bin/bash
#Sample script to inactive user account

for user in `lastlog | tail -n +2 | grep -i test | awk '{print$1}'`
do
	echo $user
	usermod -L $user
	echo $user account is disabled
done

#OR

#lastlog | tail -n +2 | grep -i test | awk '{print$1}' | xargs -I {} usermod -L {}  


