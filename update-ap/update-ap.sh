#!/bin/bash
#This script will use to reboot Access Point Unifi AP

#echo Type your AP IP Address: ; read ip; echo Type your AP AP Channel: ; read channel
ip=10.10.2.26; channel=6

if [ $ip != "0" ] || [ $channel != "0" ]; then
   
    #Find AP Channel variable
    chanfinder="grep channel /tmp/system.cfg | cut -c 17-19"
    
    #SSH variable within credentials
    varssh='sshpass -p 'un1P@ss@123' ssh -o StrictHostKeyChecking=no admin@'"$ip"''
    
    #Check SSH variable
    echo "Checking connctivity to $ip via SSH ..."
    
    checkssh=$($varssh exit; echo $?) &
    P1=$!
    BAR='**************************************************'   # this is full bar, mine is 20 chars
    for i in {1..50}; do
        echo -ne "\r${BAR:0:$i} $(($i*2))%" # print $i chars of $BAR from 0 position
        sleep .1
    done &
    P2=$!
    wait $P1 $P2 

    if [ $checkssh -eq 0 ]; then

		#Find AP Channel
		echo "Finding old channel of Access Point ..."
   		$varssh  $chanfinder
		
		#Escalate the founded channel to new variable
    	oldchannel=$($varssh $chanfinder)

    	#Replace channel variable
    	sedchannel='sed -i '"s/$oldchannel/$channel/g"' /tmp/system.cfg'
    
    	echo "Replacing old channel $oldchannel with new channel $channel to AP $ip ..."
    	$varssh $sedchannel
    
    	#Save configuration after update th channel
        echo "Saving configuration to flash"
    	$varssh "cfgmtd -f /tmp/system.cfg -w"
        echo "Verifying configuration"
        echo  $($varssh  $chanfinder)
    	if [ $($varssh  $chanfinder) == $channel ]; then
            $varssh reboot
        else
            
        fi
        #echo AP within $ip was updated with channel $channel and rebooted.	#statements
    else
    	echo 'Sorry Boss! I can'"'"'t connect to '"$ip"' via SSH'
    fi 
else
        echo Hi Boss, Something went wrong.
fi