#!/bin/bash
#Describe:Getting memory total
#Usage:get_mem_total.sh

get_total_mem()
{
	free -m|grep Mem |awk '{print $2 }'
}

echo -n "Memory(MB):"
get_total_mem
