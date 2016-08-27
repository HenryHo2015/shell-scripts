#!/bin/sed -f
#this is a comment line,all comment starts with a #
#name :mix.sed

#this is the change on line 1
1 c\
The Dibble band were grooving.
#let's now insert a line
/evening/ i\
They played some great tunes.
# change the last line,a $ means last line
$ c\
Nurse Neave was too tipsy to help.
# stick in a new line before the last line
3 a\
Where was the nurse to help?

