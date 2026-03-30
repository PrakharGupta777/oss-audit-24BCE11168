#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Prakhar Gupta
# Registration Number: 24BCE11168
# Course: Open Source Software
# Software Choice: Apache HTTP Server (httpd / apache2)

# Set the package name. RedHat=httpd, Ubuntu=apache2
PACKAGE="apache2" 

# Check if package is installed via dpkg or rpm
if dpkg -l | grep -q "^ii  $PACKAGE" || rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    
    # Extract package info
    if command -v dpkg > /dev/null; then
        dpkg -s $PACKAGE | grep -E '^Version|^Description'
    else
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    fi
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo "--------------------------------------"

# Case statement for philosophy notes
case $PACKAGE in
    httpd|apache2) 
        echo "Philosophy Note: Apache is the web server that built the open internet." 
        ;;
    mysql|mariadb) 
        echo "Philosophy Note: MySQL brings open source to the heart of millions of databases." 
        ;;
    python3|python)
        echo "Philosophy Note: Python is a language shaped entirely by community collaboration."
        ;;
    *) 
        echo "Philosophy Note: $PACKAGE is an essential open-source component." 
        ;;
esac