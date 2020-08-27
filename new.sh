#!/bin/bash
opt=$(ls)
select value in $opt
do
echo $value
# read -p "Do you want to append(a) or rewrite contents(r) or exit (any character) "   pref
# case $pref in 
# a)
# read -p 'Enter contents to append: ' content 
# echo $content $value
# ;; 
# [rR]ewrite)
# read -p 'Enter contents: ' content 
# echo $content $value 
# ;;
# *)
# echo  exiting 
# break
# ;;
# esac 
# echo "modified file: "
# cat $value
done