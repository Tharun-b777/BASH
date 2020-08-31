#!/bin/bash 
#script for virus to create symptoms files
 read -p "Enter citizen name " name
 read -p "Enter symptoms "  symptoms
i=1
#check if the file exist
if [ -d /home/$name/ ] 
then
#loop to create a new file
    while true
    do 
    if [ ! -e /home/$name/Symptoms/symptom_${i}.txt ]
    then
            echo $symptoms >> /home/$name/Symptoms/symptom_${i}.txt
            break
    fi
    i=$((i+1))
    done
else
    echo "Patient dead"
fi