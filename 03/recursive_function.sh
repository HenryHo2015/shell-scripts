#!/bin/bash

#Shell Script Name: Hello world!
#Describe:Print Hello world string on screen
#Author:Henry Ho
#Version:1.0.0
#Date:8-3-2016

dolist()
{
	local dir count
	dir="$1"
	count=0
for fn in ${dir}/*;
do
	if [ -d "$fn" ];
		then dolist "${fn}"
	fi
	count=`expr $count + 1`
done

echo "${count} ${dir}"
}

dolist $1
