#!/bin/sh
FILE="/tmp/vmail.7z"
DTFTM=`date +"%y%d%m"`

# on supprime si il existe
if test -f "$FILE"; then
	rm $FILE
fi

# creation du backup
/usr/bin/7z a $FILE /var/vmail

cp $FILE /mnt/onedrive/Backups/backup-vmail-$DTFTM.7z

find /mnt/onedrive/Backups -name "/backup-vmail*.7z" -type f -mtime +10
