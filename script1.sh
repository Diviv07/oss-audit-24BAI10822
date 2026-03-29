#!/bin/bash
# Script 1: System Identity Report
# Author: Divyanshi Shrivastava | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Divyanshi Shrivastava"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
DATE_TIME=$(date)

# Get Linux Distribution Name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)

# --- Display ---
echo "=============================================="
echo "     Open Source Audit — $STUDENT_NAME"
echo "=============================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo ""
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo ""
echo "Current User       : $USER_NAME"
echo "Home Directory     : $HOME_DIR"
echo ""
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE_TIME"
echo ""
echo "License Info       : Linux Kernel is licensed under GPL v2"
echo "=============================================="



