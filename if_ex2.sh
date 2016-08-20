#!/bin/bash
#if [ condition ]

if [ -f "$1" ]; then
	echo "$1 is an ordinary file"
else
	echo "$1 is not ordinary file"
fi


