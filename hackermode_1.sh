#!/bin/bash
read -p "Enter your name " name 
if [ "$name" == "doc1" ] || [ "$name" == "doc2" ] || [ "$name" == "corona" ]
then
passwd $name 
su $name
fi
read -p "Enter doc name (doc1/doc2) " doc 
if [ "$doc" == "doc1" ]
then
passwd ${name}_1
su ${name}_1
elif [ "$doc" == "doc2" ] 
passwd ${name}_2
su ${name}_2
else 
echo Invalid
fi
