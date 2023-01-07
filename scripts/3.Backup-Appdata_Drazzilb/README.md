# Backup-Appdata (Drazzilb)

This script is intended to backup predefined appdata directories. Allowing you to either shut down a container and backup the appdata contents (useful if container locks files), backup appdata of a container without shutting it down, finally just backing up a directory within your appdata that might not be associated with a container (useful if you have appdata for something you might come back to but have removed the container)

## Scripts

1. backup-appdata.sh - The actual script (*This can be outdated*), Always get the latest from the [Source](https://github.com/Drazzilb08/userScripts/tree/dev/scripts/backup-appdata).
1. userscripts.sh - The script I use to call it from the `UserScripts`.
1. backup-appdata.conf - The config file, edit to your own needs.
1. exclude-file.txt - a file that's used to leave out unneeded files to backup, to make the actual backup smaller (No need to backup the apps own backup files).
