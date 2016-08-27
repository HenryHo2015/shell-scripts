#!/bin/bash
#Describe:Print smile 
#Usage:source helloworld.sh
#Author:Henry Ho
#Version:1.0.0

PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "
