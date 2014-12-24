#! /bin/bash
VERSION=$(cat version.txt)
FILE=Danvdh-${VERSION}.zip

## Usage
# Run "sh ftp.sh ftp.example.com/folder/to/your/save/location username password"

curl -T ${FILE} ftp://$1 --user $2:$3

exit 0