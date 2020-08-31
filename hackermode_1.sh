#!/bin/bash
# login facilities
read -p "Enter your name " name 
if [ "$name" == "doc1" ] || [ "$name" == "doc2" ] || [ "$name" == "corona" ]
then
#if password is not created the below line can be uncommented
# passwd $name 
#loging in user account
su $name
fi 

read -p "Enter doc name (doc1/doc2) " doc 
if [ "$doc" == "doc1" ]
then
#if password is not created the below line can be uncommented
# passwd ${name}_1
#loging in user account
su ${name}_1
elif [ "$doc" == "doc2" ] 
then
#if password is not created the below line can be uncommented
# passwd ${name}_2
#loging in user account
su ${name}_2
else 
echo Invalid
fi
