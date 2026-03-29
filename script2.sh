#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Divyanshi Shrivastava

# --- Package Name ---
PACKAGE="git"

# --- Check if package is installed ---
if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed."

    # Show version (works in Git Bash also)
    $PACKAGE --version

    # Try Linux-style info (may not work in Git Bash)
    dpkg -l | grep $PACKAGE 2>/dev/null || rpm -qi $PACKAGE 2>/dev/null
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# --- Case Statement for Philosophy ---
case $PACKAGE in
    git)
        echo "Git: a distributed version control system that empowers collaboration and open development"
        ;;
    vlc)
        echo "VLC: a free multimedia player that supports almost all formats"
        ;;
    firefox)
        echo "Firefox: a privacy-focused open-source web browser"
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of applications"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
