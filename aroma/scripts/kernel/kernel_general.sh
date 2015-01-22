#!/sbin/sh

echo "$1"="$2" >> "/data/.googymax3/default.profile"

sync
exit 0
