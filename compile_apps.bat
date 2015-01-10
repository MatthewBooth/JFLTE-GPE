cd mods\framework

for /d %%f in (*.*) do (
%~dp0tools\apktool b -c %%f 
xcopy /y %%f\dist\%%f %~dp0system\framework
del /Q %%f\build
del /Q %%f\dist
)

cd ..\app

for /d %%f in (*.*) do (
%~dp0tools\apktool b -c %%f 
xcopy /y %%f\dist\%%f %~dp0system\app
del /Q %%f\build
del /Q %%f\dist
)

cd ..\priv-app

for /d %%f in (*.*) do (
%~dp0tools\apktool b -c %%f 
xcopy /y %%f\dist\%%f %~dp0system\app
del /Q %%f\build
del /Q %%f\dist
)
