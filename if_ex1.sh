#!/bin/bash
#if [ condition ]

if test -f "$1" 
then
	echo "$1 is an ordinary file"
else
	echo "$1 is not ordinary file"
fi

if [ -d $1 ] 
then
	echo "$1 is a directory"
else
	echo "$1 is not a directory"
fi



