#!/bin/bash
# func() $1 $2

sum()
{
	ret=`expr $1 + $2`	#Function's $1 and $2
	echo "*************"
	echo "Hello world  "
	echo "*************"
	return $ret

}

sum 10 20
echo "ret = $?"
echo "$ret"
