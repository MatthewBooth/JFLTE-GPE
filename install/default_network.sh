#!/sbin/sh

# Change default network for CMDA users

sed -i "s/ro.telephony.default_network=9/ro.telephony.default_network=10/g" "/system/build.prop"
sed -i "s/#telephony.lteOnCdmaDevice=1/telephony.lteOnCdmaDevice=1/g" "/system/build.prop"
sync
exit 0