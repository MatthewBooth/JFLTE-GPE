#!/bin/bash
##
cd /data
FILES=(*)

for i in *; do
	if [ "$i" != "media" ]; then
		rm -R "$i"
	fi
done

cd /data/media

for i in *; do
	if [ "$i" != "TWRP" ]; then
		rm -R "$i"
	fi
done
