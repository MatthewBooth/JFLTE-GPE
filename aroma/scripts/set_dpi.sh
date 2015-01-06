#!/sbin/sh

# Change the DPI based on the parameters

sed -i "s/ro.sf.lcd_density=480/ro.sf.lcd_density=${1}/g" "/system/build.prop"
sync
exit 0