@ECHO OFF
tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO Playnite



:Playnite
START "" "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/13714666917963235328