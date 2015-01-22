#!/sbin/sh

if [ "$1" == 0 ]; then
	echo sammyzram=off >> "/data/.googymax3/default.profile"
	echo zramdisksize=0 >> "/data/.googymax3/default.profile"
else 
	echo sammyzram=on >> "/data/.googymax3/default.profile"
	echo zramdisksize="$1" >> "/data/.googymax3/default.profile"
fi

sync
exit 0
