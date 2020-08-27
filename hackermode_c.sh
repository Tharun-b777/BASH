#!/bin/bash
function modify() 
{ 
     files=$(ls /home/$USER/Vaccines/*)
     select file in $files 
     do
     read -p "Do you want to append(a) or rewrite contents(r) or exit (any character) "   pref
     case $pref in 
     a|[aA]ppend)
     read -p 'Enter contents to append: ' content 
     echo $content >> /home/$USER/Vaccines/$file 
     ;; 
     r|[rR]ewrite)
     read -p 'Enter contents: ' content 
     echo $content > /home/$USER/Vaccines/$file 
     ;;
     *)
     echo  exiting 
     break
     ;;
     esac 
     done
}

opts="modify create exit"
echo "Do you want to "
select option in $opts 
do 
case $option in 
create)
x=1
while true
do 
if [! -e /home/$USER/Vaccines/vaccine_${x}.txt ]
then 
     touch /home/$USER/Vaccines/vaccine_${x}.txt
     read -p"Enter contents " content 
     echo $content >> /home/$USER/Vaccines/vaccine_${x}.txt
     break 
fi
x=$((x+1))
done
;;
modify)
modify 
;;
exit)
exit 
;;
*)
echo invalid option
;;
esac 
done
