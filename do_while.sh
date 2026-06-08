#!/bin/sh
#Sample do_while script

a=6
while [ $a -gt 0 ]
do
	echo $a seconds left
	(( a-- ))
done

