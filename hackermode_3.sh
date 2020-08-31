#!/bin/bash
#script to create symptoms files in citizens 
#for doc's
for j in doc1 doc2
do 
i=1
#checking if citizen is present
if [ -d /home/$j ]
then
while true
do 
#condition for creating a new file
if [ ! -e /home/$j/Symptoms/symptom_$i.txt ] 
then
echo "symptom$i" >> /home/$j/Symptoms/symptom_$i.txt
break
fi
$i = $((i+1))
done 
fi
done 

i=1
l=1
#for patients 
for j in {1..5}
do
#checking if citizen is present
if [ -d /home/p${j}_1 ]
then
while true
do 
if [ ! -e /home/p${j}_1/Symptoms/symptom_$l.txt ] 
then
echo "symptom$i" >> /home/p${j}_1/Symptoms/symptom_$l.txt
break
fi
l=$((l+1))
done
fi

if [ -d /home/p${j}_2 ]
then
while true
do
if [ ! -e /home/p${j}_2/Symptoms/symptom_$i.txt ] 
then
echo "severe symptom$i" >> /home/p${j}_2/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done
fi

done 
