#!/bin/bash
read -p "enter symptoms " symptoms 
read -p "enter your name (eg p1,p3) " name 
read -p "enter doctor name(doc1/doc2) " doc 

i=1
 
if [ "$doc" == "doc1" ]
then
if [ ! -d /home/${name}_1 ]
then
echo "Patient dead"
exit 
fi
while true
do

if [ -e /home/${name}_1/Symptoms/symptom_$i.txt ]
then
echo $symptoms >> /home/$doc/Request/$name.txt
echo $symptoms >> /home/${name}_1/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done

else
i=1
if [ ! -d /home/${name}_2 ]
then 
echo "Patient dead"
exit
fi
while true
do 
if [ -e /home/${name}_2/Symptoms/symptom_$i.txt ]
then 
echo $symptoms >> /home/$doc/Request/$name.txt
echo $symptoms >> /home/${name}_2/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done
fi