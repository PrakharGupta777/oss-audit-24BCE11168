#!/bin/bash
# Script 4: Log File Analyzer
# Author: Prakhar Gupta
# Registration Number: 24BCE11168
# Course: Open Source Software
# Software Choice: Apache HTTP Server (httpd)

LOGFILE=$1
KEYWORD=${2:-"error"} 
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry if empty
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: $LOGFILE is empty."
    read -p "Enter new log file path (or 'quit'): " NEW_PATH
    [ "$NEW_PATH" == "quit" ] && exit 0
    LOGFILE=$NEW_PATH
    [ ! -f "$LOGFILE" ] && touch .dummy && LOGFILE=".dummy"
done
[ -f .dummy ] && rm .dummy

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5