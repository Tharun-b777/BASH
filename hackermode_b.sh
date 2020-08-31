#!/bin/bash
#script to delete accounts greater than 20 symptoms
#for doc
for i in doc1 doc2
do
#check if doc exist
if [ -d /home/$i ]
then
#considering each word as a symptom compute every word in every files in symptoms directory
a=$(wc -w /home/$i/Symptoms/* | grep -w "total" | awk '{print $1}' )
#check if greater than 20
if [ $a -gt 20 ]
then 
userdel -f $i
fi
fi
done 

#for citizen
for i in {1..5}
do 
#check if citizen exist
if [ -d /home/p${i}_1 ]
then
a=$(wc -w /home/p${i}_1/Symptoms/* | grep -w "total" | awk '{print $1}' )
if [ $a -gt 20 ]
then
userdel -f p${i}_1
fi
fi 

if [ -d /home/p${i}_2 ]
then
a=$(wc -w /home/p${i}_2/Symptoms/* | grep -w "total" | awk '{print $1}' )
if [ $a -gt 20 ]
then
userdel -f p${i}_1
fi
fi

done
