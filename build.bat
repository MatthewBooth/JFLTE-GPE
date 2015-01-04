::UltimaROM build script
set /p VERSION=<version.txt
del JFLTE-GPE-%VERSION%.zip
tools\7za.exe a -mx9 -xr@tools\exclusion.txt JFLTE-GPE-%VERSION%.zip META-INF aroma system Changelog.md
cd ..