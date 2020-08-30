#!/bin/bash
for j in doc1 doc2
do 
i=1
if [ -d /home/$j ]
while true
do 
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

for j in {1..5}
do
if [ -d /home/p${j}_1 ]
while true
do 
if [ ! -e /home/p${j}_1/Symptoms/symptom_$l.txt ] 
then
echo "symptom$i" >> /home/p${j}_1/Symptoms/symptom_$l.txt
fi
l=$((l+1))
done
fi

if [ -d /home/p${j}_2 ]
while true
do
if [ ! -e /home/p${j}_2/Symptoms/symptom_$i.txt ] 
then
echo "severe symptom$i" >> /home/p${j}_2/Symptoms/symptom_$i.txt
fi
i=$((i+1))
done
fi

done 
