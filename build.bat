::UltimaROM build script
set /p VERSION=<version.txt
del Danvdh-%VERSION%.zip
tools\7za.exe a -mx9 -xr@tools\exclusion.txt Danvdh-%VERSION%.zip META-INF system root data boot.img Changelog.md
cd ..