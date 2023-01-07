#!/bin/bash
#Only check hardlinks for files created after "DAYS" ago. Set this to the same value you have in the mover_xx.py script
DAYS=3
DATE=`date --date="$DAYS day ago" +%F`
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Qbittorrent Mover" -d "qbittorrent Mover starting @ `date +%H:%M:%S`."
echo excetuing script to pause torrents and run mover
echo qbittorrent-movies
/usr/bin/python3 /mnt/user/userScripts/qbt-mover/mover_movies.py
echo qbittorrent-movies completed
echo qbittorrent-tv
/usr/bin/python3 /mnt/user/userScripts/qbt-mover/mover_tv.py
echo qbittorrent-tv completed
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Qbittorrent Mover" -d "qbittorrent Mover complete @ `date +%H:%M:%S`."
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Creating Hardlink" -d "Recreating hardlinks started @ `date +%H:%M:%S`."
echo now looking into missing hardlinks
echo recreating hardlink for Movies
jdupes -rLX newer:$DATE "/mnt/user/data/.torrents/movies/hd" "/mnt/user/data/.torrents/movies/uhd" "/mnt/user/data/media/movies-hd" "/mnt/user/data/media/movies-hd-kids" "/mnt/user/data/media/movies-uhd" "/mnt/user/data/media/movies-uhd-kids"
echo recreating hardlink for TV
jdupes -rLX newer:$DATE "/mnt/user/data/.torrents/tv/hd" "/mnt/user/data/.torrents/tv/uhd" "/mnt/user/data/media/tv-kids"
/usr/local/emhttp/plugins/dynamix/scripts/notify -s "Creating Hardlink" -d "Recreating hardlinks complete @ `date +%H:%M:%S`."