#!/bin/bash
echo lampp server starting
#this file for starting lampp server and .jar file at raspberry pi StartUp automatically

#1- copy this file to  /etc/init.d
#2- sure that is the file executable
#3- for running as default while Raspberry Pi plug in run "sudo update-rc.d piRadio.py defaults" command

#enter your password 
echo "********" | sudo -S service apache2 restart
sleep 1
#define .jar file path 
cd /opt/piRadio
java -jar piRadio.jar 


