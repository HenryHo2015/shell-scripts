#!/bin/bash

#Shell Script Name: Hello world!
#Describe:Print Hello world string on screen
#Author:Henry Ho
#Version:1.0.0
#Date:8-3-2016

vagetable=banana

echo "I want to eat ${vagetable:-something}"

vagetable=

echo "I want to eat ${vagetable:-something}"

vagetable=

echo "I want to eat ${vagetable:=something}"
