#!/bin/bash
function modify() 
{
     clear 
     opts=$(ls /home/$USER/Vaccines/*)
     select value in $opts 
     do
     read -p "Do you want to append(a) or rewrite contents(r) or exit (any character) "   pref
     case $pref in 
     a|[aA]ppend)
     read -p 'Enter contents to append: ' content 
     echo $content >> /home/$USER/Vaccines/$value 
     ;; 
     r|[rR]ewrite)
     read -p 'Enter contents: ' content 
     echo $content > /home/$USER/Vaccines/$value 
     ;;
     *)
     echo  exiting 
     break
     ;;
     esac 
     echo "modified file: "
     cat $value
     done
}

options ="modify create exit"
echo "Do you want to "
select option in $options 
do 
case $option in 
c|[Cc]reate|2)
read -p"Enter filename " file 
touch /home/$USER/Vaccines/$file 
read -p"Enter contents " content 
echo $content >> /home/$USER/Vaccines/$file 
;;
m|[Mm]odify|1)
modify 
sleep 2
;;
e|[Ee]xit|3)
exit 
;;
*)
echo invalid option
sleep 1
;;
esac 
done
