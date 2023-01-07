#!/bin/bash
# Backup Appdata to Cloud
# This script Syncs the latest backup of appdata to Cloud.

# Set Number of Days to Keep Backups
days=30


# Sync latest backup of appdata to Cloud.
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "appdata Backup to Cloud" -d "Starting appdata Backup to Cloud @ `date +%H:%M:%S`."
rclone copy /mnt/user/backup/unRaid/appdata Onedrive-Pandorasbox:PANDORASBOX/backup/unRaid/appdata -v --update --progress --fast-list --max-age 36h --bwlimit 35M
rclone copy /mnt/user/backup/unRaid/plexdata Onedrive-Pandorasbox:PANDORASBOX/backup/unRaid/plexdata -v --update --progress --fast-list --max-age 36h --bwlimit 35M

# Cleanup Old Backups
find "/mnt/disks/Onedrive-Pandorasbox/PANDORASBOX/backup/unRaid/appdata/*" -type d -mtime +"$days" -exec rm -rf {} +
find "/mnt/disks/Onedrive-Pandorasbox/PANDORASBOX/backup/unRaid/plexdata/*" -type d -mtime +"$days" -exec rm -rf {} +

if [ $? -eq 0 ]
then
/usr/local/emhttp/webGui/scripts/notify -s "appdata Backup to Cloud complete!" -d "Finished appdata to Cloud Sync @ `date +%H:%M:%S`."
else
/usr/local/emhttp/webGui/scripts/notify -s "appdata Backup to Cloud FAILED" -i "alert" -d "FAILED!!! appdata Backup to Cloud Sync @ `date +%H:%M:%S`."
fi