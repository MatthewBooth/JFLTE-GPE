#!/bin/bash
VERSION=$(cat version.txt)
FILE=Danvdh-${VERSION}.zip

7za a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt ${FILE} META-INF system root data boot.img
cd ..