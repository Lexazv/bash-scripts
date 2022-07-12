#!/usr/bin/bash

BACKUP_NAME=$(date '+Backup_%d-%m-%y_%H:%M:%S')

BACKUP_FILES=() # specify files you want to backup

echo 'Creating backup file'
zip $BACKUP_NAME.zip ${BACKUP_FILES[@]}

