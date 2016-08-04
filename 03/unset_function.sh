#!/bin/bash

#Shell Script Name: Hello world!
#Describe:Print Hello world string on screen
#Author:Henry Ho
#Version:1.0.0
#Date:8-3-2016

myfunction()	#Define a function
{
	echo "What a great day today!"
}

myfunction	#Call function

unset myfunction	#Cancle a function

myfunction	#Call function again 
