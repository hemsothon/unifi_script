read w1 w2 w3
#w1="Do"; w2="Did"; w3="Done"
var_name1="w1"
var_name2="w2"
var_name3="w3"

var_val1=$w1
var_val2=$w2
var_val3=$w3
echo ++++++++++++++++++++
arr[0]=$w1
arr[1]=$w2
arr[2]=$w3
for i in 1 2 3
do

   rand=$[ $RANDOM % 3 ]
   # echo $rand
   echo ${arr[$rand]}
#        if [ ${arr[$rand]} == $w1 ] 
#        then
#            echo ${arr[$rand]}
#            echo var name of $w1 is $var_name1
#        elif [ ${arr[$rand]} == $w2 ] 
#        then
#            echo ${arr[$rand]}
#           echo var name of $w2 is $var_name2
#        elif [ ${arr[$rand]} == $w3 ]
#        then
#           echo var name of $w3 is $var_name3
#           echo ${arr[$rand]}
#        fi
    if [ $rand == $w2  ]  
    then
     echo $rand; echo W1   
    elif [ $rand == $w1 ]
    then    
        echo $rand; echo W2
    elif [ $rand == $w3 ]
    then
        echo $rand; echo W3
    fi    
done
