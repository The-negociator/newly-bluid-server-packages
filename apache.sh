#!/bin/bash
#Description: apache installation script 
#Date: February 13 2023
#Author:Frank

echo "Apache installation will start in 10 seconds"

sleep "10" 

yum install httpd -y
#By default apache have the port 80/tcp
#To check the daemon or service status on contos7
systemctl status httpd
#To start the daemon 
systemctl start httpd
systemctl enble httpd
#If the firewalld is not running, run the following commands
systemctl start firewalld 
systemctl status firewalld
systemctl enable firewalld

echo "Apache successfully installed"
echo "move into /var/wwww/html , in the index.html file replace the default content on the browser"
