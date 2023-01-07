# Backup-Plex (Drazzilb)

This script is designed to backup your Essential Plex data on a cron schedule as well as perform a Full backup ever so many days.

- Full backups can be set to run on every cron job or after so many days via the force_full_backup variable.
- Full backups will backup everything within the defined source variable except for the Cache and Codecs folders.
- Essential backups will back up only Plug-in Support/Database, Plug-in Support/Preferences directories as well as Preferences.xml file.
- No metadata is backed up during an Essential backup.

## Scripts

1. backup-plex.sh - The actual script (*This can be outdated*), Always get the latest from the [Source](https://github.com/Drazzilb08/userScripts/tree/dev/scripts/backup-plex).
1. userscripts.sh - The script I use to call it from the `UserScripts`.
1. backup-plex.conf - The config file, edit to your own needs.
1. plex-bloat-fix.py - Removes unneeded image files (Posters/Title Cards) from plex, Always get the latest from the [Source](https://github.com/bullmoose20/Plex-Stuff#plex-bloat-fix).
1. .env - The config file for the `plex-bloat-fix.py` please [usage](https://github.com/bullmoose20/Plex-Stuff#usage) for all the settings.
1. requirements.txt - This is needed so `plex-bloat-fix.py` can run (I run it from the `UserScripts` using the [Install Plex API]([url](https://github.com/TRaSH-/userScripts-and-Configs/blob/main/scripts/install-plex-api/))
