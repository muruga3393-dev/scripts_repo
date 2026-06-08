#!/bin/bash
#This script is used to provide predefined description to all the script

echo Enter the scriptname
read name
echo Enter the description of the script
read desc
echo Enter the Author name
read author

echo ################################################################
echo "#!/bin/bash" >> /home/muruga/scripts/$name
echo "#Description:" $desc >> /home/muruga/scripts/$name
echo "#Author:" $author >> /home/muruga/scripts/$name
echo "#Created date on:" $(date) >> /home/muruga/scripts/$name
echo "#Modified date on:" $(date) >> /home/muruga/scripts/$name
echo #################################################################

chmod 755 /home/muruga/scripts/$name

vi /home/muruga/scripts/$name
