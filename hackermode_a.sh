#!/bin/bash
 read -p "Enter citizen name " name
 read -p "Enter symptoms "  symptoms
#  echo $name
#  echo $symptoms
i=1
if [ -d /home/$name/ ]; then
    while true
    do 
    if [ -e /home/$name/Symptoms/symptom_$i.txt ]
    then
            echo $symptoms >> /home/$name/Symptoms/symptom_1.txt
            break
    fi
    i=$((i+1))
    done
else
    echo "Patient dead"
fi