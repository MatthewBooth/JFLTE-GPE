#!/system/bin/sh
# UltimaROM build script
## Usage
# Run "sh ftp.sh filename ftp.example.com/folder/to/your/save/location username password"

curl -T $1 ftp://$2 --user $3:$4

exit 0