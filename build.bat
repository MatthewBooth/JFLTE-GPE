::UltimaROM build script
set /p VERSION=<version.txt
tools\7za.exe a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt Danvdh-%VERSION%.zip META-INF system root data boot.img
cd ..