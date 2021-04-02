echo "........................................................"
echo "..............---------         ---------..............."
echo "-------------- 		                 -------------"
echo " |||||         welcome to trinetra	              "
echo ">>>>>  this tool is for learning prupose  >>>>>---------"
echo "****** if anyone uses for the illegal activity one *****"
echo "............................................."
echo "..............----------------..............."
echo "--------------                   ------------"
echo " enter the option 0 to proceed or 1 to exit"
read q
echo "enterd option $q"
if  [ "$q" -eq 0 ] 
then
echo "enter the option to perform the task "
echo "enter option c to clear the screen "
echo " 1- for ip scanning using nmap"
echo " 2- for website using different options"
echo " 3- for vulnerabilty assesment "
echo " 4- for forensics investigation"
read m
case "$m" in
1) echo "ip to scan the result"
   read ip
    nmap ip
    ;;
2) echo " enter the option to use 1- for dmitry \n 2- for dnsenum \n 3- for whois"
   read opt
   echo "enter the ip or the host website scan"
   
   read web 
     if [ "$opt" -eq 1 ]
     then dmitry -winsepfb $web
     elif [  "$opt" -eq 2 ]
     then 
     echo "this is for enumeratng for the dns"
     dnsenum $web
     elif [ "$opt" -eq 3 ] 
     then
     echo "this is for harvesting the email on particular domain"
     theHarvester  -d $web -l 500 -b google
     else 
     echo "wrong choice"
     fi
    ;;
3) echo "initiate the vulnarability assement using the tools \n option 1- is for legion option 2- is for nikto"
read li
   if [ "$li" -eq 1 ]
   then
   sudo legion
   elif [ "$li" -eq 2 ]
   then
   echo "enter the website link"
   read newweb
   nikto -h $newweb
   else 
   echo "you choosed an wrong answer"
   fi
   ;;
4) echo "initiate forensics"
   echo "under maintainance"
 ;;
c) clear
;;
*) echo "invalid option"
    ;;
    esac
 elif [ "$q" -eq 1 ]
 then
 exit
 else
  echo "script encountered an error"
 fi
