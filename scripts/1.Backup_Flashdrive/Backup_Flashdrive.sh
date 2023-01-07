#!/bin/bash
# Backup Flashdrive
# This script creates a dated tar file of the Unraid USB flash drive.

#--DEFINE VARIABLES--#

# Set Flashdrive Backup Directory (must include trailing /)
flashbackupDirectory='/mnt/user/backup/unRaid/flashdrive/'

# Set Number of Days to Keep Backups
days=3


#--START SCRIPT--#
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "FlashDrive Backup" -d "Backup of FlashDrive starting @ `date +%H:%M:%S`."

tar cfW """$flashbackupDirectory"""flash$(date +"-%Y-%m-%d@%H.%M")"".tar /boot

#Cleanup Old Backups
find "$flashbackupDirectory"* -type f -mtime +"$days" -exec rm -rf {} +

#Stop Notification
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "FlashDrive Backup" -d "Backup of FlashDrive complete @ `date +%H:%M:%S`."