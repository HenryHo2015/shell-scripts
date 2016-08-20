#!/bin/bash
# All condition test in shell script

read -p "Please enter the file with absolute path:" file

if [ -d $file ]; then 
	echo "The file is directory."
else
	echo "The file is not directory."
fi

if [ -f $file ]
then
	echo "The file is ordinary file."
else
	echo "The file is not ordinary file."
fi

if [ -L $file ]
then
	echo "The file is link file."
else
	echo "The file is not link file."
fi

if [ -r $file ];then
	echo "This file is readable."
else
	echo "This file is not readable."
fi

if [ -w $file ];then
	echo "This file is writable."
else
	echo "This file is not writable."
fi

if [ -x $file ];then
	echo "This file is executable."
else
	echo "This file is not executable"
fi

if [ ! -s $file ];then
	echo "The file is empty."
else
	echo "The file is not empty."
fi
