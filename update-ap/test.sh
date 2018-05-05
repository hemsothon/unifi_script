#!/bin/bash
MAX_NO=0
echo -n "Enter Number between (5 to 9) : "
read MAX_NO
if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ] ; then
echo "WTF... I ask to enter number between 5 and 9, Try Again"
exit 1
fi
clear
for (( i=1; i<=MAX_NO; i++ )) do     for (( s=MAX_NO; s>=i; s-- ))
do
echo -n " "
done
for (( j=1; j<=i;  j++ ))     do      echo -n " ."      done     echo "" done ###### Second stage ###################### for (( i=MAX_NO; i>=1; i-- ))
do
for (( s=i; s<=MAX_NO; s++ ))
do
echo -n " "
done
for (( j=1; j<=i;  j++ ))
do
echo -n " ."
done
echo ""
done
echo -e "\n\n\t\t\t Whenever you need help, Tecmint.com is always there"

#!/bin/bash
clear 
echo -e "33[1m Hello World"
# bold effect
echo -e "33[5m Blink"
# blink effect
echo -e "33[0m Hello World"
# back to normal
echo -e "33[31m Hello World"
# Red color
echo -e "33[32m Hello World"
# Green color
echo -e "33[33m Hello World"
# See remaining on screen
echo -e "33[34m Hello World"
echo -e "33[35m Hello World"
echo -e "33[36m Hello World"
echo -e -n "33[0m"
# back to normal
echo -e "33[41m Hello World"
echo -e "33[42m Hello World"
echo -e "33[43m Hello World"
echo -e "33[44m Hello World"
echo -e "33[45m Hello World"
echo -e "33[46m Hello World"
echo -e "33[0m Hello World"