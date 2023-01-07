#!/bin/bash
#----------------------------------------------------------------------------
#first section makes the folders for the mount in the /mnt/disks folder so docker containers can have access
#you only need as many as what you need to mount for dockers or a network share

mkdir -p /mnt/disks/Onedrive-Pandorasbox

#This section mounts the various cloud storage into the folders that were created above.

rclone mount --max-read-ahead 1024k --vfs-cache-mode writes --allow-other Onedrive-Pandorasbox: /mnt/disks/Onedrive-Pandorasbox &
