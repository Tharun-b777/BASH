#!/bin/bash
#patients enter names ,symptoms and doctors
read -p "enter symptoms " symptoms 
read -p "enter your name (eg p1,p3) " name 
read -p "enter doctor name(doc1/doc2) " doc 

i=1
 
#check if doc exist and patient exist
if [ "$doc" == "doc1" ] && [ -d /home/$doc ] && [ -d /home/${name}_1 ]
then
while true
do 
#check for any symptom file not existing
if [ ! -e /home/${name}_1/Symptoms/symptom*.txt ]
then 
echo $symptoms >> /home/$doc/Requests/$name.txt
echo $symptoms >> /home/${name}_1/Symptoms/symptom_1.txt
break
fi 
#check for symptom file exists
if [ -e /home/${name}_1/Symptoms/symptom_$i.txt ]
then
echo $symptoms >> /home/$doc/Requests/$name.txt
echo $symptoms >> /home/${name}_1/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done

#check if doc exist and patient exist
elif [ "$doc" == "doc2" ] && [ -d /home/$doc ] && [ -d /home/${name}_2 ]
then
while true 
do
#check for any symptom file not existing
if [ ! -e /home/${name}_2/Symptoms/symptom*.txt ]
then 
echo $symptoms >> /home/$doc/Requests/$name.txt
echo $symptoms >> /home/${name}_2/Symptoms/symptom_1.txt
break
fi
#check for symptom file exists
if [ -e /home/${name}_2/Symptoms/symptom_$i.txt ]
then 
echo $symptoms >> /home/$doc/Requests/$name.txt
echo $symptoms >> /home/${name}_2/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done

else 
echo  Invalid 
fi