@ECHO OFF
;Title MCrusadr  /  Mod Packer Tool
::----------------------------------------------------------
CLS
ECHO ------------------------------------------------------
ECHO MCrusadr Mod Packer Tool (By Pikakid98)
ECHO ------------------------------------------------------
ECHO.
ECHO.
ECHO This will pack all of the mods in your "Mods To Install" folder
ECHO .mcm (MCrusadr Mod) files
ECHO.
ECHO Continue?
ECHO 1. Yes
ECHO 2. No
ECHO.

CHOICE /C 12

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Yes

::----------------------------------------------------------
:Yes
cd "Data\mod install folder"
App\MCrusadr\7z\7zr.exe a "" -o". Mods\mymod.mcm"
pause
exit
::----------------------------------------------------------

::----------------------------------------------------------
:No
call "Data\run.bat"
::----------------------------------------------------------