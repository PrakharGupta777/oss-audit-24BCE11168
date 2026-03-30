#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Prakhar Gupta
# Registration Number: 24BCE11168
# Course: Open Source Software
# Software Choice: Apache HTTP Server (httpd)

# Array of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================"
echo "Directory Audit Report"
echo "======================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Use awk to extract fields from ls -ld
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------"
# Check Apache config directory specifically
CONFIG_DIR="/etc/apache2" 

if [ -d "$CONFIG_DIR" ]; then
    CONF_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Software Config ($CONFIG_DIR) => Permissions: $CONF_PERMS"
else
    echo "Software config directory ($CONFIG_DIR) not found."
fi