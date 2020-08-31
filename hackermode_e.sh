#!/bin/bash
#script for doc to delete symptom files
read -p "Enter patient name " name 
read -p "Enter symptomfile to be deleted eg(symptom_1.txt) " file 
#check for doc name and patient
if [ "$USER" == "doc1" ] && [ ! -d /home/${name}_1 ]
then 
rm /home/${name}_1/Symptoms/$file

elif [ "$USER" == "doc2" ] && [ ! -d /home/${name}_2 ]
then
rm /home/${name}_2/Symptoms/$file

else 
echo patient dead
fi