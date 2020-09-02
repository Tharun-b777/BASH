#!/bin/bash
function Del()
{
    files=$(ls /home/$1/Symptoms)
    echo "enter number corresponding to file to delete"
    select file in $files 
    do 
    rm /home/$1/Symptoms/$file 
    exit
    done 
}
#script for doc to delete symptom files
read -p "Enter patient name " name 

#check for doc name and patient
if [ "$USER" == "doc1" ] && [ -d /home/${name}_1 ]
then 
Del ${name}_1

elif [ "$USER" == "doc2" ] && [ -d /home/${name}_2 ]
then
Del ${name}_2

else
echo patient dead
fi