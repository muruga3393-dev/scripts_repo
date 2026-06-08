#!/bin/bash
#Script to check the list of logged users history

#today=$(date | awk '{print $1,$2,$3}')
#last | grep -i "$today"

echo "Script will provide list of logged users history"
#echo "Enter the date/month you want to list out:"

#read date

echo "Any specific user:"
read user

#last | grep -E "$date|$user"
last | grep -i $user
