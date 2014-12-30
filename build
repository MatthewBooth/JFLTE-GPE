#!/bin/bash
VERSION=$(cat version.txt)
FILE=JFLTE-GPE-5.0-${VERSION}.zip
rm "$FILE"
7za a -mx9 -xr@tools/exclusion.txt "$FILE" META-INF aroma system Changelog.md
cd ..