#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Divyanshi Shrivastava

# Note: In shell, an alias can be used to shorten commands (e.g., alias ll='ls -l')

echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose Paragraph ---
echo "On $DATE, I reflect on the importance of open source software. Tools like $TOOL empower users and developers around the world. To me, freedom means $FREEDOM, and it represents the ability to learn, modify, and share knowledge without restrictions. In the future, I would like to build $BUILD and contribute it to the open-source community so that others can benefit and improve upon it." > $OUTPUT

# --- Display Output ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
