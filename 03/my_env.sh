#!/bin/bash
j=0
k=0
for i in `env`
  do 
  	j=`expr $j + 1`
  	echo $j 
	let "k=k+1"
	echo $k
  	echo $i
  done

echo   "Environment variables are:"$j
