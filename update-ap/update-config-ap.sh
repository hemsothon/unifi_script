#!/bin/bash
echo 'Updating Access Point Configuration...'
echo 'Copy config file with SCP'
sshpass -p 'un1P@ss@123' scp earth.system.cfg admin@10.10.2.15:/tmp/system.cfg
echo 'Save and Reboot via SSH'
sshpass -p 'un1P@ss@123' ssh -o StrictHostKeyChecking=no admin@10.10.2.15 "save && reboot"
# End of the script
