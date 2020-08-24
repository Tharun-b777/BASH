#!/bin/bash
#creting users
useradd -m corona
useradd -m doc1
useradd -m doc2
for i in {1..5}:
do
	useradd -m p{$i}_1
	useradd -m p{$i}_2
done
#creating directories and assigning groups
mkdir /home/doc1/Vaccines /home/doc1/Symptoms /home/doc1/Requests
mkdir /home/doc2/Vaccines /home/doc2/Symptoms /home/doc2/Requests
for i in {1..5}:
do
    mkdir /home/p{$i}_1/Symptoms
	usermod -aG p{$i}_1 corona
	usermod -aG p{$i}_1 doc1
    mkdir /home/p{$i}_2/Symptoms 
	usermod -aG p{$i}_2 corona
	usermod -aG p{$i}_2 doc2

done 
usermod -aG doc1 corona
usermod -aG doc2 corona
#creating files and assigning groups
for i in {1..5}:
do
	#creating request files for each patients
	touch /home/doc1/Requests/p{$i}.txt
	chgrp p{$i}_1 p{$i}.txt
    touch /home/doc2/Requests/p{$i}.txt
	chgrp p{$i}_2 p{$i}.txt
	#creating vaccines and symptoms files
	echo "vaccine{$i}" >> /home/doc1/Vaccines/vaccine_$i.txt
	echo "stable vaccine{$1}" >> /home/doc2/Vaccines/vaccine_$i.txt
	echo "symptom{$i}" >> /home/p{$i}_1/Symptoms/symptom$i.txt
	echo "severe symptom{$1}" >> /home/p{$i}_2/Symptoms/symptom$i.txt

done
#assigning permissions
for i in {1..5}:
do	
	
	chmod -R 770 /home/p{$i}_1
	chmod -R 770 /home/p{$i}_2
done
chmod -R 704 /home/corona
chmod -R 770 /home/doc1
chmod -R 770 /home/doc2
chmod -R 774 /home/doc1/Vaccines
chmod -R 774 /home/doc2/Vaccines