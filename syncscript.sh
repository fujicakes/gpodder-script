#!/usr/bin/bash

# Fetch, download, and sync episodes to mp3 player
gpo update && gpo download && gpo sync

#display today's weather/forcast (5 day)
ansiweather -u imperial -s true -d true -l Biddeford, ME
ansiweather -u imperial -s true -f 5 -d true -l Biddeford, ME

#y/n prompt to unmount drive
read -p "Sync complete. Eject drive? (y/n) " yn
case $yn in
[yY] ) echo "Ejecting drive..."; sudo eject /media/adam/'ADAM_S IPOD'/;;
[nN] ) echo "Exiting..."; exit;;
* ) echo "Invalid response (y/n)";;
esac

# unmount drive
#echo "unmounting device"
#umount /media/adam/63EF-4607

# Sync Complete
#echo "sync complete, it is now safe to remove device"

# delay before closing terminal
sleep 1
