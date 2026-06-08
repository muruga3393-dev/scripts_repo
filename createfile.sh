#!/bin/sh
#Create old file using script

for letters in A B C D E F G H I J
do
	cd /home/muruga/oldfiles
	touch -d "2026-01-01 04:00" file$letters
	echo file$letters is created
done

