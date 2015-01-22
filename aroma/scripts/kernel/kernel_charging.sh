#!/sbin/sh

if [ "$1" == "default" ]; then
	echo force_fast_charge=0 >> "/data/.googymax3/default.profile"
	echo usb_charge_level=700 >> "/data/.googymax3/default.profile"
	echo ac_charge_level=1450 >> "/data/.googymax3/default.profile"
fi
if [ "$1" == "usb" ]; then
	echo force_fast_charge=2 >> "/data/.googymax3/default.profile"
	echo usb_charge_level=1000 >> "/data/.googymax3/default.profile"
	echo ac_charge_level=1450 >> "/data/.googymax3/default.profile"
fi
if [ "$1" == "ac" ]; then
	echo force_fast_charge=2 >> "/data/.googymax3/default.profile"
	echo usb_charge_level=700 >> "/data/.googymax3/default.profile"
	echo ac_charge_level=1900 >> "/data/.googymax3/default.profile"
fi
if [ "$1" == "max" ]; then
	echo force_fast_charge=2 >> "/data/.googymax3/default.profile"
	echo usb_charge_level=1000 >> "/data/.googymax3/default.profile"
	echo ac_charge_level=1900 >> "/data/.googymax3/default.profile"
fi

sync
exit 0
