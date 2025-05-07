@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "D:\WTL\xamp\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "D:\WTL\xamp\killprocess.bat" "httpd.exe"

if not exist "D:\WTL\xamp\apache\logs\httpd.pid" GOTO finish
del "D:\WTL\xamp\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
