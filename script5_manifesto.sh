#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Author: Prakhar Gupta
# Registration Number: 24BCE11168
# Course: Open Source Software
# Software Choice: Apache HTTP Server (httpd)

# Concept: Aliases
# alias read_man='cat manifesto_$(whoami).txt'

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Author: Prakhar Gupta" >> "$OUTPUT"
echo "Registration Number: 24BCE11168" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should empower people. Every day, I rely on tools like $TOOL to get my work done, which reminds me that the core of open source is $FREEDOM." >> "$OUTPUT"
echo "If I had the time and resources, I would build a $BUILD and share it freely with the world, ensuring that knowledge remains accessible to everyone." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"