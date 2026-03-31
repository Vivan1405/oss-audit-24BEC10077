#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vivan Bari (24BEC10077)

# Important system directories
DIRS=(
    "/etc" 
    "/var/log" 
    "/home" 
    "/usr/bin" 
    "/tmp" 
)

# Git-specific config files to check
GIT_FILES=(
    "$HOME/.gitconfig" 
    "/etc/gitconfig"
)

echo "============================================="
echo "          Directory & File Audit             "
echo "============================================="

# Loop through each item in the array
for DIR in "${DIRS[@]}"; do
    # Check if the path exists (-e checks for both files and directories)
    if [ -e "$DIR" ]; then
        # Get permissions using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        # Get owner and group
        OWNER_GROUP=$(ls -ld "$DIR" | awk '{print $3 ":" $4}')
        
        # Determine size (suppress errors for folders we don't have access to using 2>/dev/null)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # If it's a directory, print it nicely, same for files
        if [ -d "$DIR" ]; then
            TYPE="[DIR ]"
        else
            TYPE="[FILE]"
        fi
        
        echo "$TYPE $DIR"
        echo "   -> Permissions: $PERMS"
        echo "   -> Owner/Group: $OWNER_GROUP"
        echo "   -> Size       : $SIZE"
        echo "---------------------------------------------"
    else
        echo "[MISS] $DIR does not exist on this system."
        echo "---------------------------------------------"
    fi
done

echo ""
echo "============================================="
echo "          Git Config File Audit              "
echo "============================================="

# Separate loop for Git config files
for FILE in "${GIT_FILES[@]}"; do
    if [ -e "$FILE" ]; then
        PERMS=$(ls -ld "$FILE" | awk '{print $1}')
        OWNER_GROUP=$(ls -ld "$FILE" | awk '{print $3 ":" $4}')
        SIZE=$(du -sh "$FILE" 2>/dev/null | cut -f1)
        
        echo "[FILE] $FILE"
        echo "   -> Permissions: $PERMS"
        echo "   -> Owner/Group: $OWNER_GROUP"
        echo "   -> Size       : $SIZE"
        echo "---------------------------------------------"
    else
        echo "[MISS] $FILE does not exist on this system."
        echo "---------------------------------------------"
    fi
done
