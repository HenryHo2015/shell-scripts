#!/bin/bash

DOMAIN=google.com

create_name()
{
	cut -d: -f1 /etc/passwd >name.paste
	return 0
}

create_domain()
{
    j=`wc -l /etc/passwd|cut -d ' ' -f1`
	for i in `seq 1 $j`
	do
		echo "$DOMIN" >> domain.paste
	done
	return 0
}

create_name
create_domain
paste -d@ name.paste domain.paste >email_addr.txt

