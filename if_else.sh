#!/bin/sh
#Sample Input_Output script

echo "Enter your name"
read name
echo "Hello $name"
echo "Enter your professional"
read prof
echo "Did you like your professions(Y/N):"
read ans
if [[ "$ans" == "Y" || "$ans" == "Yes" || "$ans" == "yes" ]];
then
        echo $prof is awesome!
else
	echo "change your profession which you like"
fi

