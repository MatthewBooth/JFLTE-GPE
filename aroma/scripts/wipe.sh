#!/tmp/bash
##
cd /data
FILES=(*)

for i in *; do
	if [ "$i" != "media" ] || [ "$i" != "TWRP" ]; then
		rm -R "$i"
	fi
done

