#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vivan Bari (24BEC10077)
#
# Usage Example for testing:
# ./script4_log_analyzer.sh /var/log/dpkg.log warn
# Or to create a fake log quickly: echo "Test error line" > test.log && ./script4_log_analyzer.sh test.log error

# $1 is the first argument passed (the file)
LOGFILE=$1
# $2 is the second argument (the keyword). If not provided, defaults to "error"
KEYWORD=${2:-"error"} 
COUNT=0

# If no arguments provided at all, show usage instruction and exit
if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_log_file> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    echo "Note: If you get 'permission denied' on Linux, try reading /var/log/dpkg.log or /var/log/bootstrap.log which often have read permissions for normal users."
    exit 1
fi

# Check if the file exists, is readable, and is not empty.
# If there's an issue, use a while loop to interactively ask the user to try again!
while [ ! -r "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
    echo "Error: The file '$LOGFILE' is missing, unreadable, or completely empty."
    read -p "Please enter a valid log file path: " LOGFILE
done

echo "Analyzing '$LOGFILE' for the keyword '$KEYWORD'..."

# Read the file line by line
# IFS= prevents leading/trailing whitespace from being trimmed
# -r prevents backslash escapes from being interpreted
while IFS= read -r LINE; do
    # -i makes grep case insensitive, -q suppresses stdout (quiet mode)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------------------------"
echo "Result: Keyword '$KEYWORD' found $COUNT times."

# Display the last 5 matching lines if any were found
if [ "$COUNT" -gt 0 ]; then
    echo "--------------------------------------------------------"
    echo "Last 5 occurrences in the log:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
