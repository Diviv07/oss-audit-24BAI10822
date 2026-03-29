#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Divyanshi Shrivastava

# --- Important Directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "        Directory Audit Report"
echo "======================================"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR 2>/dev/null | awk '{print $1, $3, $4}')

        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "------ Software Config Check ------"

# --- Check config directory for Git ---
CONFIG_DIR="$HOME/.gitconfig"

if [ -f "$CONFIG_DIR" ]
then
    PERMS=$(ls -l $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "Git Config File Found"
    echo "Permissions: $PERMS"
else
    echo "Git config file not found"
fi
