#!/tmp/bash
##
cd /data
FILES=(*)

for i in *; do
	if [ "$i" != "media" ]; then
		rm -R "$i"
	fi
done

