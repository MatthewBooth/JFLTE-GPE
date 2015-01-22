#!/sbin/sh

if [ "$1" == 0 ]; then
	echo arch_power=off >> "/data/.googymax3/default.profile"
else
	echo arch_power=off >> "/data/.googymax3/default.profile"
fi

sync
exit 0
