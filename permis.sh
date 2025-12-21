#!/bin/bash
echo "###START###"
#set -x
if [$1 == ""]
then
	DRLook="750"
else
	DRLook=$1
fi
#read qwerty
for filename in *
do 
    if [ $(stat -c "%a" "$filename") == $DRLook ] 
    then 
        sleep 1
        echo "Files with" $DRLook "permission: $filename"
	ls -lt| grep $filename 
    else 
	sleep 1	
	echo "Files WITHOUT" $DRLook " permission: $filename"
        ls -lt| grep $filename
	
    fi 
done 
echo "###DONE###"
