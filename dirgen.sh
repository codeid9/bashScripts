#!/bin/bash


read -p "Enter Folder Name: " root_dir

mkdir $root_dir
read -p $"Do you want to create Folder inside $root_dir?(y,N)? " conf_subdir

if [[ $conf_subdir = Y || $conf_subdir = y ]]; then
	read -p $"How many folders do you want to create? " dir_num
	for (( i=1; i<=$dir_num; i++ ))
	do
		read -p $"Enter Folder$i Name: " name
		mkdir "$root_dir/$name"
	done
fi
exit


