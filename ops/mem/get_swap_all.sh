#!/bin/bash
#Describe:Getting the info. about swap.
#Usage:get_swap_all.sh

get_swap_all()
{
	free -m|grep Swap|awk '{print "Total(MB):"$2"Used(MB):"$3"Free(MB):"$4}'
}

echo -n "Swap info.:"
get_swap_all
