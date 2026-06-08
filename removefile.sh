#!/bin/bash
#Remove old files

#for file in `find /home/muruga/oldfiles -mtime +90`
#do
#	rm -rf $file
#	echo $file is removed
#done

#OR

#find /home/muruga/oldfiles -mtime +90 -exec ls -lrt {} \;
#find /home/muruga/oldfiles -mtime +90 -exec rm -rf {} \;

find /home/muruga/oldfiles -mtime +90 -exec mv {} {}.old \;

