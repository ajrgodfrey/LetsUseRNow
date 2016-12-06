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

copy LURNWeb.r+LURN.r LURNWorkhorse.r

"%InstallPath%\bin\i386\r.exe" CMD BATCH  --internet2 LURNWorkhorse.R LURNWorkhorse.Rout 

del "Rplots.pdf"

move *.r .\RCode
copy .\RCode\lurn.r lurn.r
move .\RCode\LURN*.r .
