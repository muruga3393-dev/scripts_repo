#!/bin/bash
#Script which is used to check filesystem size

#for value in `df -h | grep -v tmpfs | awk '{print $5}' | tail -n+2 | awk -F "%" '{print $1}'`
#do
#	if [ $value -ge 60 ];
#	then
#		echo `df -h | grep $value` is full
#	fi
#done

#OR

#df -h | awk '(0+$5) >=60 {print $1,$5}'

#OR

df -h | tail -n+2 | grep -v tmpfs | awk '{print $1,$5}' | sed 's/%/ /g' | while read output
do
	filesystem=`echo $output | awk '{print $1}'`
	value=`echo $output | awk '{print $2}'`

	if [ $value -ge 60 ];
	then
		echo $filesystem $value is full
	fi
done

