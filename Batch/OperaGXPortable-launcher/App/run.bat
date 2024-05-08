@ECHO OFF
;Title Opera GX Web Game Player Warning!
:Main
CLS
ECHO This version of Opera GX has been reserved by Playnite as a dedicated
ECHO web game launcher and therefore should NOT be used without a game to
ECHO load.
ECHO.
ECHO.
ECHO 1. Open Opera GX
ECHO 2. Open Playnite Through Steam
ECHO 3. Download Opera GX Again For Non-Playnite Use
ECHO 4. Close
ECHO.
CHOICE /C 1234

IF ERRORLEVEL 4 GOTO 4
IF ERRORLEVEL 3 GOTO 3
IF ERRORLEVEL 2 GOTO 2
IF ERRORLEVEL 1 GOTO 1

:1
ECHO.
ECHO Are you sure?
ECHO.
ECHO 1. Yes
ECHO 2. No
ECHO.
CHOICE /C 12

IF ERRORLEVEL 2 GOTO Main
IF ERRORLEVEL 1 GOTO 1-yes

:1-yes
START "" "App\OperaGXPortable.lnk"
exit

:2
START "" "..\..\Playnite (Steam).exe"
exit

:3
START "" "https://portableapps.com/apps/internet/opera-gx-portable"
GOTO Main

:4
exit