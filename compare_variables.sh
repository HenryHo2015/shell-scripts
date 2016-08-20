#!/bin/bash
# All compare approaches

read -p "Enter the first number:" first
read -p "Enter the second number:" second

if [ $first -lt $second ]
then
	echo "$first is less than $second."
else
	if [ $first -eq $second ]
	then
	      echo "$first equal to $second."
	else
		  echo "$first is greater than $second."
	fi
fi
