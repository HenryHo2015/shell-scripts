#!/bin/bash
#$0 1 2 3 4 5 6

while [ -n "$*" ]
	do
		echo $1 $2 $3 $4 $5 $6
		shift
	done
