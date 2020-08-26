#!/bin/bash
for i in doc1 doc2
do
if [ -d /home/$i ]
then
a=$(wc -w /home/$i/Symptoms/* | grep -w "total" | awk 'print $1' )
if [ $a -gt 20 ]
then 
userdel -f $i
fi
fi
done
for i in {1..5}
do 
if [ -d /home/p${i}_1 ]
then
a=$(wc -w /home/p${i}_1/Symptoms/* | grep -w "total" | awk 'print $1' )
if [ $a -gt 20 ]
then
userdel -f p${i}_1
fi
fi 
if [ -d /home/p${i}_2 ]
a=$(wc -w /home/p${i}_2/Symptoms/* | grep -w "total" | awk 'print $1' )
if [ $a -gt 20 ]
then
userdel -f p${i}_1
fi
fi
done
