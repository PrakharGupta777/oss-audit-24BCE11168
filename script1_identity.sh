#!/bin/bash
# Script 1: System Identity Report
# Author: Prakhar Gupta
# Registration Number: 24BCE11168
# Course: Open Source Software
# Software Choice: Apache HTTP Server (httpd)

# --- Variables ---
STUDENT_NAME="Prakhar Gupta"
REG_NUMBER="24BCE11168"
SOFTWARE_CHOICE="Apache HTTP Server"

# System info using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)

# Extracting Linux Distribution name from os-release
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"')
# Getting current date and time
CURRENT_DATE=$(date +"%A, %b %d, %Y %H:%M:%S")
# Adding a simple OS license message
LICENSE_MSG="The Linux kernel is licensed under the GNU GPL v2."

# --- Display ---
echo "======================================"
echo "          Open Source Audit           "
echo "======================================"
echo "Student : $STUDENT_NAME"
echo "Reg No  : $REG_NUMBER"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $USER_HOME"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "--------------------------------------"
echo "License Info: $LICENSE_MSG"
echo "======================================"