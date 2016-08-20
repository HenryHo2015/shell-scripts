#!/bin/bash
#expr excise

s=`expr 2 + 3` #expression must be separated by space
expr $s \* 4
expr `expr 2 + 3` \* 4	#\* stand for *(times)
echo $s

