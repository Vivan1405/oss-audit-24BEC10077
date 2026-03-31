#!/bin/bash
# Script 1: System Identity Report
# Author: Vivan Bari (24BEC10077)
# Course: Open Source Software
# Chosen Software: Git

# --- Variables ---
STUDENT_NAME="Vivan Bari"
REG_NUMBER="24BEC10077"
SOFTWARE_CHOICE="Git"

# --- System info ---
# uname -r gets the kernel version
KERNEL=$(uname -r)
# whoami gets the current user
USER_NAME=$(whoami)
# uptime -p gets the pretty uptime format
UPTIME=$(uptime -p)
# get the Linux distribution name safely, fallback to 'Unknown' if not found
if [ -f /etc/os-release ]; then
    DISTRO=$(grep -E '^PRETTY_NAME=' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
else
    DISTRO="Unknown Linux"
fi
# get current date and time
CURRENT_DATE=$(date '+%A, %d %B %Y %T')

# --- Display ---
echo "==============================================="
echo "       Open Source Audit — $STUDENT_NAME       "
echo "       Registration: $REG_NUMBER               "
echo "==============================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "-----------------------------------------------"
echo "Kernel          : $KERNEL"
echo "Distribution    : $DISTRO"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "-----------------------------------------------"
echo "Licensing Note  : The Linux kernel is licensed under GPLv2 (GNU General Public License version 2)."
echo "==============================================="
