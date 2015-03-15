#!/sbin/sh

## Viper4Android settings
FILE=/system/build.prop
sed -i "s/tunnel.decode=true/tunnel.decode=false/g" "$FILE"
sed -i "s/lpa.use-stagefright=true/lpa.use-stagefright=false/g" "$FILE"
exit 0
