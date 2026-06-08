#!/bin/sh
#Admin task sample script

p=pwd
u=uptime
c=cal

echo "This script will show pwd, filesystem, system uptimeinfo and calculator"
echo 
$p
$u
$c
df -h
ls -lrt

echo "End of the script, Thank you!"

