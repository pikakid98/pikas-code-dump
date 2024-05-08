@ECHO OFF
;Title MCrusadr  /  File Automator
CLS
mkdir "Data\cache"
set dirpath="Data\Mods To Install"
dir %dirpath% /b /-p /o:gn > "Data\cache\temp.txt"
del cache\del.txt /F /S
del cache\move.txt /F /S
setlocal enabledelayedexpansion
for /f "tokens=* delims= " %%a in (Data\cache\temp.txt) do (
set /a N+=1
echo ^del "..\%%a" /F /S^ >> Data\cache\del.txt
)
setlocal enabledelayedexpansion
for /f "tokens=* delims= " %%a in (Data\cache\temp.txt) do (
set /a N+=1
echo ^move "%%a" ".."^ >> Data\cache\move.txt
)
del cache\temp.txt /F /S
call "Data\run.bat"