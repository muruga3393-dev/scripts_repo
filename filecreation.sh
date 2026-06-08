#!/bin/bash
#Create multiple files with user input

echo "How many file do you want to create ?"
read count
echo "Enter the file names should be: ?"
read file
a=1
while [ $count -ge $a ];
do
	touch $file$a
	echo $file$a has been created
	(( a++ ))
done


