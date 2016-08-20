#!/bin/bash
# unitl loop exercise one

sum=0
num=10
until test $num -eq 0
	do
		sum=`expr $sum + $num`
		num=`expr $num - 1`
	done
echo "sum = $sum"
