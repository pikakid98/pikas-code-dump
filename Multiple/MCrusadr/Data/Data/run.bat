@ECHO OFF
call "Data\Bats\Opening.bat"
color 84
::----------------------------------------------------------
CLS
;Title MCrusadr
ECHO =======================================================
ECHO MCrusadr
ECHO A Mod Loader For Super Smash Bros. Crusade [v0.3.3]
ECHO SSBC (v0.9.4a)
ECHO.
ECHO By Pikakid98
ECHO =======================================================
ECHO.
ECHO 1. Launch
ECHO.
ECHO 2. Mod Install Tool
ECHO 3. Mod Removal Tool
ECHO 4. File Automator Tool
ECHO 5. Mod Packer Tool
ECHO.

CHOICE /C 12345
IF ERRORLEVEL 5 GOTO ModPack
IF ERRORLEVEL 4 GOTO Automator
IF ERRORLEVEL 3 GOTO Removal
IF ERRORLEVEL 2 GOTO Install
IF ERRORLEVEL 1 GOTO Launch

::----------------------------------------------------------
:Launch
START "" "Data\Bats\Launch.bat"
::----------------------------------------------------------

::----------------------------------------------------------
:Install
if exist "Data\Mods.txt" (
ECHO Your mods are already installed
pause
exit
) ELSE (
CLS
"Data\Bats\Mod Install Tool.bat"
)
::----------------------------------------------------------

::----------------------------------------------------------
:Removal
if exist "Data\Mods.txt" (
CLS
"Data\Bats\Mod Removal Tool.bat"
) ELSE (
ECHO No mods are installed
pause
exit
)
::----------------------------------------------------------

::----------------------------------------------------------
:Automator
CLS
"Data\Bats\File Automator.bat"
::----------------------------------------------------------

::----------------------------------------------------------
:ModPack
CLS
"Data\Bats\Mod Packer Tool.bat"
::----------------------------------------------------------