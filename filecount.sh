#/bin/bash
#script used to check files count

cd /home/muruga/scripts/files
value=$(ls -lrt | wc -l)
if [ $value -eq 20 ];
then
	echo file count is reached $value
	echo job can be processed
else
	echo Here is the current files count $value 
fi
