#!/bin/bash
#Sample script to rename file extension


find /home/muruga/scripts/ -name *.sh > output.txt

for i in `cat output.txt`
do
	echo *.sh files is going to renamed as *.txt
	echo Confirm to proceed y/n
	read ans
	if [ $ans == y ];
	then
		mv $i ${i%.sh}.txt
	echo  rename is done
else 
	exit
	fi
done




