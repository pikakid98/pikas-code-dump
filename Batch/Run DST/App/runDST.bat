@ECHO OFF
START "" "..\..\Steam\steam.exe" -nobootstrapupdate -noverifyfiles -no-browser +open steam://openminigamelist 

tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
timeout 1
if "%ERRORLEVEL%"=="0" GOTO Finish

:Finish

START "" "steam://rungameid/322330"
echo answer = msgbox("%date:~-10,2%/%date:~-7,2%/%date:~-4,4% @ %time:~0,2%:%time:~3,2%:%time:~6,2%", vbDefaultButton1, "Last Run") > Data\LastRun.vbs

