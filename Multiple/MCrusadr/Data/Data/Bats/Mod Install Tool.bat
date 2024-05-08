@ECHO OFF
;Title MCrusadr  /  Mod Install Tool
ECHO ------------------------------------------------------
ECHO MCrusadr Mod Install Tool (By Pikakid98)
ECHO ------------------------------------------------------
ECHO.
ECHO.
ECHO This will install all mods from the ". Mods" Folder
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
"App\MCrusadr\7z\7zr.exe" x ". Mods\Gunvolt (Azure Striker Gunvolt)\Gunvolt (Azure Striker Gunvolt).mcm" -o..\
	::----------------------------------------------
"App\MCrusadr\7z\7zr.exe" x ". Mods\Kris (Deltarune)\Kris (Deltarune).mcm" -o..\
	::----------------------------------------------
"Tools\7zr.exe" x ". Mods\Kung Fu Man (MUGEN Original)\Kung Fu Man (MUGEN Original).mcm" -o..\
	::----------------------------------------------
"ToolsApp\MCrusadr\7zirisame (Touhou).mcm" -o..\
	::----------------------------------------------
"App\MCrusadr\7z\7zr.exe" x ". Mods\Flandre Scarlet (Touhou)\Flandre Scarlet (Touhou).mcm" -o..\
	::----------------------------------------------
del "..\data\secret.txt"
"..\data\secret.txt"

echo 0066 0067 0068 0069 0070 >> ..\data\cssfull.txt
echo 4 >> ..\data\secret.txt
	::----------------------------------------------
	echo GV >> ..\data\secret.txt
	echo gunvolt_mash >> ..\data\secret.txt
	echo Gunvolt >> ..\data\secret.txt
	echo Gunvolt >> ..\data\secret.txt
	echo gunvolt >> ..\data\secret.txt
	::----------------------------------------------
	echo Kris >> ..\data\secret.txt
	echo kris >> ..\data\secret.txt
	echo Kris >> ..\data\secret.txt
	echo Kris >> ..\data\secret.txt
	echo deltarune >> ..\data\secret.txt
	::----------------------------------------------
	echo KFM >> ..\data\secret.txt
	echo kfmbycielbami >> ..\data\secret.txt
	echo Kung Fu Man >> ..\data\secret.txt
	echo KFM >> ..\data\secret.txt
	echo mugen >> ..\data\secret.txt
	::----------------------------------------------
	echo Marisa >> ..\data\secret.txt
	echo marisa_mash >> ..\data\secret.txt
	echo Marisa Kirisame >> ..\data\secret.txt
	echo Marisa Kirisame >> ..\data\secret.txt
	echo touhou >> ..\data\secret.txt
	::----------------------------------------------
	echo Flandre >> ..\data\secret.txt
	echo flandre >> ..\data\secret.txt
	echo Flandre Scarlet >> ..\data\secret.txt
	echo Flandre Scarlet >> ..\data\secret.txt
	echo touhou >> ..\data\secret.txt
	::----------------------------------------------
	echo Gunvolt (Azure Striker Gunvolt) >> Data\Mods.txt
	echo Kris (Deltarune) >> Data\Mods.txt
	echo Kung Fu Man (MUGEN Original) >> Data\Mods.txt
	echo Marisa Kirisame (Touhou) >> Data\Mods.txt
	echo Flandre Scarlet (Touhou) >> Data\Mods.txt
::----------------------------------------------------------

::----------------------------------------------------------
:No
call "Data\run.bat"
::----------------------------------------------------------