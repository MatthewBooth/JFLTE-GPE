#!/sbin/sh
#
# This leverages the loki_patch utility created by djrbliss which allows us
# to bypass the bootloader checks on jfltevzw and jflteatt
# See here for more information on loki: https://github.com/djrbliss/loki
#
#
# Run loki patch on boot.img for locked bootloaders, found in loki_bootloaders
#

export C=/tmp/loki_tmpdir

egrep -q -f /tmp/loki_bootloaders /proc/cmdline
if [ $? -eq 0 ];then
  echo "Loki detected for patch and flash"
  mkdir -p $C
  dd if=/dev/block/platform/msm_sdcc.1/by-name/aboot of=$C/aboot.img
  /tmp/loki_patch boot $C/aboot.img /tmp/boot.img $C/boot.lok || exit 1
  /tmp/loki_flash boot $C/boot.lok || exit 1
  rm -rf $C
  exit 0
fi


echo 'Unlocked bootloader version detected.'
echo 'Flashing normally.'
dd if=/tmp/boot.img of=/dev/block/platform/msm_sdcc.1/by-name/boot || exit 1
exit 0
