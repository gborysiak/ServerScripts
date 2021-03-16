#!/bin/bash

SA_LEARN="/usr/bin/sa-learn"

# recherche des répertoires des boites aux lettres
for d in `/usr/bin/find /var/vmail/vmail1 -name "Maildir" -type d`; do
	echo $d
	# recherche des mails valides / HAM
	if [ -d "$d/cur/" ]; then
		$SA_LEARN --ham $d/cur
	fi
	# reherche de spam
	if [ -d "$d/.Junk/" ]; then
		$SA_LEARN --spam $d/.Junk/cur
	fi
	if [ -d "$d/.Spam/" ]; then
		$SA_LEARN --spam $d/.Spam/cur
	fi
done
$SA_LEARN --dump magic
