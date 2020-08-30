#!/bin/bash
read -p "enter symptoms " symptoms 
read -p "enter your name (eg p1,p3) " name 
read -p "enter doctor name(doc1/doc2) " doc 

i=1
 

if [ "$doc" == "doc1" ] && [ -d /home/$doc ]
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

elif [ "$doc" == "doc2" ] && [ -d /home/$doc ]
while true
if [ -e /home/${name}_2/Symptoms/symptom_$i.txt ]
then 
echo $symptoms >> /home/$doc/Request/$name.txt
echo $symptoms >> /home/${name}_2/Symptoms/symptom_$i.txt
break
fi
i=$((i+1))
done

else 
echo  Invalid credentials
fi