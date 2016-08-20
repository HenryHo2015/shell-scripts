#!/bin/bash
echo "a is 5,b is 3.Please select your number:"
a=5
b=3
select var in "a+b" "a-b" "a*b" "a/b"
do
	break
done
case $var in
"a+b")
	echo 'a+b='`expr $a + $b`;;
"a-b")
	echo 'a-b='`expr $a - $b`;;
"a*b")
	echo 'a*b='`expr $a \* $b`;;
"a/b")
	echo 'a/b='`expr $a / $b`;;
*)
	echo "input error"
esac
