#!/bin/bash
#Describe:check specific directory,if the directory doesn't exist and createit
#Usage:$0 /home/henry/shell-script


mkdir=/usr/local/sql	#Specific check or create directory

check_dir_mkdir()
{
	if [ ! -d $1 ];then
		mkdir -p $1
		echo "Create $1 is successful."
	fi
}

check_dir_mkdir $mkdir

