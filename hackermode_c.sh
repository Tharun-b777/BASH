#!/bin/bash
function modify() 
{
     clear 
     read -p "Enter name of file to modify: " file 
     read -p "Do you want to append (a) or rewrite (r) the contents: " value 
     case $value in 
     a)
     read -p 'Enter contents to append: ' content 
     echo $content >> /home/$USER/Vaccines/$file 
     ;; 
     r)
     read -p 'Enter contents: ' content 
     echo $content > /home/$USER/Vaccines/$file 
     ;;
     *)
     echo  invalid option 
     ;;
     esac 
     echo "modified file: "
     cat $file
}
x=0
while [ $x = 0 ]
do
    clear
    echo "Do you want to create new file (c) or modify existing file (m) ??(e:exit)"
    read option 
    case $option in 
    c)
    read -p"Enter filename " file 
    touch /home/$USER/Vaccines/$file 
    read -p"Enter contents " content 
    echo $content >> /home/$USER/Vaccines/$file 
    ;;
    m)
    modify 
    sleep 2
    ;;
    e)
    exit 
    ;;
    *)
    echo invalid option
    sleep 1
    ;;
   esac 

done