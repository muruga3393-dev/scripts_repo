#!/bin/bash
#Create multiple files with user input

echo "How many file do you want to create ?"
read count
echo "Enter the file names should be: ?"
read file

#$(seq first last)
for i in $(seq 1 $count)
do
touch $file$i
echo $file$i has been created
done



