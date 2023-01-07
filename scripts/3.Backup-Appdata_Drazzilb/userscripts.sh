#!/bin/bash
#                                 _       _          ____             _
#           /\                   | |     | |        |  _ \           | |
#          /  \   _ __  _ __   __| | __ _| |_ __ _  | |_) | __ _  ___| | ___   _ _ __
#         / /\ \ | '_ \| '_ \ / _` |/ _` | __/ _` | |  _ < / _` |/ __| |/ / | | | '_ \
#        / ____ \| |_) | |_) | (_| | (_| | || (_| | | |_) | (_| | (__|   <| |_| | |_) |
#       /_/    \_\ .__/| .__/ \__,_|\__,_|\__\__,_| |____/ \__,_|\___|_|\_\\__,_| .__/
#                | |   | |                                                      | |
#                |_|   |_|                                                      |_|
echo Pulling latest version of Appdata Backup
/usr/bin/wget https://raw.githubusercontent.com/Drazzilb08/userScripts/dev/scripts/backup-appdata/backup-appdata.sh -O /mnt/user/userScripts/backup-appdata/backup-appdata.sh
echo Starting Appdata Backup
/mnt/fastdrive/userScripts/backup-appdata/backup-appdata.sh
echo Finished Appdata Backup