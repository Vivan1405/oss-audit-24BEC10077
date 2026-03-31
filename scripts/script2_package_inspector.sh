#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vivan Bari (24BEC10077)

PACKAGE="git"

echo "Checking package status for: $PACKAGE"
echo "-------------------------------------"

# Check if the package is installed using dpkg (Ubuntu/Debian) or rpm (Fedora/RHEL)
# We cover both to make the script robust across distributions.
if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "✓ $PACKAGE is installed (Debian/Ubuntu system detected)."
    echo ""
    echo "Package Details:"
    dpkg -s "$PACKAGE" | grep -E '^Version|^Maintainer|^Description' | head -n 3
elif rpm -q "$PACKAGE" &>/dev/null; then
    echo "✓ $PACKAGE is installed (RHEL/Fedora system detected)."
    echo ""
    echo "Package Details:"
    rpm -qi "$PACKAGE" | grep -E '^Version|^License|^Summary|^Description' | head -n 3
else
    echo "✗ $PACKAGE is NOT installed."
    echo "To install on Ubuntu, run: sudo apt install git"
fi

echo "-------------------------------------"
echo "FOSS Package Philosophy Notes:"

# Interactive or fixed case statement to show the package's purpose
case "$PACKAGE" in
    git) 
        echo "Git: The distributed version control system that Linus Torvalds built to empower global collaboration without central control." 
        ;;
    httpd|apache2) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    firefox)
        echo "Firefox: A browser fighting for a free and open web."
        ;;
    *)
        echo "Unknown philosophical purpose for this package."
        ;;
esac
echo "====================================="
