#!/bin/bash
for j in doc1 doc2
do 
i=1
while true
do 
if [ ! -e /home/$j/Symptoms/symptom_$i.txt ] 
then
echo "symptom$i" >> /home/$j/Symptoms/symptom_$i.txt
break
fi
$i = $((i+1))
done 
done 
i=1
while true
do 
if [ ! -e /home/p${i}_1/Symptoms/symptom_$i.txt ] 
then
echo "symptom$i" >> /home/$j/Symptoms/symptom_$i.txt
fi
if [ ! -e /home/p${i}_1/Symptoms/symptom_$i.txt ] 
then
echo "severe symptom$i" >> /home/$j/Symptoms/symptom_$i.txt
fi
i=$((i+1))
done 