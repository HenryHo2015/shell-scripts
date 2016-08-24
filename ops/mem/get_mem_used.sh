#!/bin/bash
#Describe:Getting the used memory
#Usage:get_used_mem.sh

get_used_memory()
{
	free -m|grep Mem |awk '{print $3 }'
}

echo -n "Used memory(MB):"
get_used_memory
