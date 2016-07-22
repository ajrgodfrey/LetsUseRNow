@echo off
del ".Rhistory"

SETLOCAL
for /F "tokens=*" %%A IN ('regdmp 
HKEY_LOCAL_MACHINE\SOFTWARE\R-core\R ^| findstr /i "InstallPath"') do (
   set InstallPath=%%A
   goto next
)

:next
set InstallPath=%InstallPath:~14%

copy LURNPrint.r+LURN.r LURNWorkhorse.r

"%InstallPath%\bin\i386\rterm.exe" --internet2 --no-save --quiet < LURNWorkhorse.r > LURN.txt

del "Rplots.pdf"

move *.r .\RCode
move .\RCode\LURN*.r .
