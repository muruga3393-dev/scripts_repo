#!/bin/sh
#Schedule to run backup for filesystems

if [ -f /tmp/backup.tar.gz ] ;
then
	echo Backup file exists, Archieving filie
	mv /tmp/backup.tar.gz /tmp/backup_$(date +%F).tar.gz
	ls -lrt /tmp/backup_$(date +%F).tar.gz
else
	tar -cvf /tmp/backup.tar /var /etc
	gzip /tmp/backup.tar
	echo "Backup has been taken"
	ls -lrt /tmp/backup.tar.gz
fi


