#!/bin/bash

#Shell Script Name: Hello world!
#Describe:Print Hello world string on screen
#Author:Henry Ho
#Version:1.0.0
#Date:8-3-2016

whattoday()
{
	date +%A
}

isfriday()
{
if [ `whattoday` = "星期五" ];
then
	return 0
else
	return 1

fi
}

echo "today is `whattoday`"

isfriday && echo "This is workday"

isfriday || echo "This is workday"

