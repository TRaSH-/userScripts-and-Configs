#!/bin/bash
#
#   _____  _             ____             _                   _____           _       _
#  |  __ \| |           |  _ \           | |                 / ____|         (_)     | |
#  | |__) | | _____  __ | |_) | __ _  ___| | ___   _ _ __   | (___   ___ _ __ _ _ __ | |_
#  |  ___/| |/ _ \ \/ / |  _ < / _` |/ __| |/ / | | | '_ \   \___ \ / __| '__| | '_ \| __|
#  | |    | |  __/>  <  | |_) | (_| | (__|   <| |_| | |_) |  ____) | (__| |  | | |_) | |_
#  |_|    |_|\___/_/\_\ |____/ \__,_|\___|_|\_\\__,_| .__/  |_____/ \___|_|  |_| .__/ \__|
#                                                   | |                        | |
#                                                   |_|                        |_|
#
#
echo Starting plex-bloat-fix
/usr/bin/python3 /mnt/fastdrive/userScripts/plex-scripts/plex-bloat-fix.py
echo Finished plex-bloat-fix
echo Pulling latest version of Plex Backup
/usr/bin/wget https://raw.githubusercontent.com/Drazzilb08/userScripts/dev/scripts/backup-plex/backup-plex.sh -O /mnt/fastdrive/userScripts/backup-plex/backup-plex.sh
echo Starting Plex Backup
/mnt/fastdrive/userScripts/backup-plex/backup-plex.sh
echo Finished Plex Backup