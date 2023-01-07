# Collection of unRAID userscripts

Here you will find a collection of several script i'm using.

## Installation

These scripts were designed to work on unRAID, however there shouldn't be any reason it wouldn't work on any Unix based system. <br>
However, on unRAID simply ensure you have `UserScripts` installed from the appstore > navigate to the `UserScripts` location within `Settings`> create a new script and then set your cron interval.

> Note: Most backup scripts use 7Zip for compression.
> If you'd like to use 7Zip you'll need to download it using NerdTools, which is also in the appstore.

Thnx to [Drazzilb08](https://github.com/Drazzilb08/userScripts) for the backup scripts he made.

### Scripts

1. Backup_Flashdrive - This script creates a dated tar file of the Unraid USB flash drive.
1. Backup_Flashdrive_to_Cloud - This script Syncs the latest backup of your Flash Drive to the Cloud.
1. Backup-Appdata_(Drazzilb) - This script is intended to backup predefined appdata directories. Allowing you to either shut down a container and backup the appdata contents (useful if container locks files), backup appdata of a container without shutting it down.
1. Backup-Plex_(Drazzilb) - This script is designed to backup your Essential Plex data on a cron schedule as well as perform a Full backup ever so many days.
1. Backup_Appdata_to_Cloud - This script Syncs the latest backup of appdata (incl. Plex) to Cloud.
1. qBit-Mover - This script pauses the last x days added torrents so the mover can move them from your cache to your array (and runs Jdupes after it).
1. Install-Plex-API - This will install the Plex API.
1. Install-qBittorent-API - This will install the qBittorent API.
1. rclone-mount - mount/unmount your rclone mount.
