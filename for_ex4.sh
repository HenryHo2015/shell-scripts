#!/bin/bash
#((i=0;i<10;i++))

cd ~
mkdir shell_tut
cd shell_tut

for ((i=0;i<10;i++))
do
	touch for_ex4_$i.txt
done
