::UltimaROM build script
set /p VERSION=<version.txt
del JFLTE-GPE-5.0-%VERSION%.zip
tools\7za.exe a -mx9 -xr@tools\exclusion.txt JFLTE-GPE-5.0-%VERSION%.zip META-INF system root data boot.img Changelog.md
cd ..