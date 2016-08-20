#!/bin/bash
#Bulk add users

read -p "Please enter number you want to add: " num

add_user()
{
	read -p "Enter user name:" username
	useradd $username
	read -p "Enter user password:" password
	echo $password | passwd --stdin $username 
}

for i in $(seq 1 $num)
	do
		add_user
	done
