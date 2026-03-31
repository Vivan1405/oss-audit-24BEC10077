#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vivan Bari (24BEC10077)

echo "==============================================="
echo "      The Open Source Manifesto Generator      "
echo "==============================================="
echo "Please answer the following three questions:"
echo ""

# Read interactive input from the user (-p allows showing a prompt text)
read -p "1. Name one open-source tool you use almost every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one type of software or app you'd love to build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')
# Create a unique output file name using the current user's name
OUTPUT_FILE="manifesto_vivan_bari.txt"

# Some helpful aliases for terminal users (Demonstrating the concept in comments!)
# alias ll='ls -la' -> This alias would make viewing the created file easier later.

echo ""
echo "Generating your personalized manifesto..."
sleep 1

# Compose the paragraph and write it to the file using redirection
# > overwrites or creates the file, >> appends to it
echo "--- My Open Source Manifesto ---" > "$OUTPUT_FILE"
echo "Date: $DATE" >> "$OUTPUT_FILE"
echo "Author: Vivan Bari (24BEC10077)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Software should be open because $FREEDOM belongs to everyone." >> "$OUTPUT_FILE"
echo "Every day, I rely on tools like $TOOL to learn, grow, and create." >> "$OUTPUT_FILE"
echo "In the spirit of sharing knowledge without barriers, I pledge that one day" >> "$OUTPUT_FILE"
echo "I will build a $BUILD and release it openly, passing the gift of free" >> "$OUTPUT_FILE"
echo "software forward to the next generation." >> "$OUTPUT_FILE"

echo "==============================================="
echo "Manifesto successfully saved to: $OUTPUT_FILE"
echo "Here is what it says:"
echo "-----------------------------------------------"

# Display the created file to the user
cat "$OUTPUT_FILE"
