#!/bin/bash
backup_files="./files"
dest="./backups"
removeDays="14"

backupName="$(date +%d-%m-%Y).tgz"

# create a new backup
tar -czf $dest/$backupName $backup_files

# remove old backups
find ./backups -type f -mtime +$removeDays -name '*.docx' -execdir rm -- '{}' \;