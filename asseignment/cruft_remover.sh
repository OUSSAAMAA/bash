#!/bin/bash

read -p "which folder do you want to remove from ? " folderName
read -p "after how many day to remove files if they are not modified ? " daysToCruft

cd $folderName
readarray -t files < <(find -maxdepth 1 -mtime -$daysToCruft -type f)

echo "FILES THAT HAS NOT BEEN MODIFIED IN ${daysToCruft} days : "
for file in ${files[@]}; do
	echo "File Name : $file"
	read -p "do you want it to be deleted (Yes/No) :" userApproval
	if [ $userApproval = 'Yes' ]; then
		rm -i $file
	fi
done

