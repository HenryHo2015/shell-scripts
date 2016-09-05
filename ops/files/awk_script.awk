#!/usr/bin/awk -f
#This is how to write a comment in Awk
#using the BEGIN special pattern to print a sentence
#BEGIN { printf "%s\n","Writing my first Awk executable script!"}
#BEFIN { FS=":" }
#/henry/ { print "Username :",$1,"User ID:",$3,"User GID:",$4}
BEGIN {
x=0
do {
print x;
x+=1;
}
while (x<=10)
}
