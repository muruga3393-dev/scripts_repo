#!/bin/bash
#Script to live the /var/log/message for the error/shutdown

tail -f /var/log/messages | while read output
do
	echo $output | egrep -i "error|warning|shutdown|reboot|su|failed" >> /tmp/messages
done

