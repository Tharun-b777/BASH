#!/bin/bash
read -p "Enter patient name " name 
read -p "Enter symptomfile to be deleted eg(symptom_1.txt) " file 
if [ ! -d /home/$name ]
then 
echo "Patient dead "
exit
fi 
if [ "$USER" == "doc1" ]
then 
# echo $file
rm /home/${name}_1/Symptoms/$file
elif [ "$USER" == "doc2" ]
# echo $file 2
rm /home/${name}_2/Symptoms/$file
else 
echo INVALID OPERATION
fi