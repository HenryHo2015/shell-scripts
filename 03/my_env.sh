#!/bin/bash
j=0
for i in `env`
  do 
  	j=`expr $j + 1`
  	echo $j 
  	echo $i
  done

echo   "Environment variables are:"$j
