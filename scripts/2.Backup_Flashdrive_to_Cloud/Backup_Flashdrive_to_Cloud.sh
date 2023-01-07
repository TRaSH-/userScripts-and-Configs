#!/bin/bash
# Backup Flashdrive to Cloud
# This script Syncs the latest backup of your Flash Drive to the Cloud.

# Set Number of Days to Keep Backups
days=30


# Start Syncs the latest backup of your Flash Drive to the Cloud.
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Flash Backup to Cloud" -d "Starting Flash Backup to Cloud @ `date +%H:%M:%S`."
rsync -avhr --ignore-existing --progress --stats /mnt/user/backup/unRaid/flashdrive/* /mnt/disks/Onedrive-Pandorasbox/PANDORASBOX/backup/unRaid/flashdrive/

# Cleanup Old Backups
find "/mnt/disks/Onedrive-Pandorasbox/PANDORASBOX/backup/unRaid/flashdrive/"* -type f -mtime +"$days" -exec rm -rf {} +

if [ $? -eq 0 ]
then
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Flash Backup to Cloud complete!" -d "Finished Flash Backup to Cloud Sync @ `date +%H:%M:%S`."
else
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Flash Backup to Cloud FAILED!" -i "alert" -d "FAILED !!! Flash Backup to Cloud Sync @ `date +%H:%M:%S`."
fi