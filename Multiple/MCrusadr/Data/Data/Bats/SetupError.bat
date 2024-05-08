@ECHO OFF
;Title MCrusadr / Error
ECHO Super Smash Bros Crusade could not be found in the directory above
ECHO.
timeout 4
echo :: Please don't leave this blank. It WILL cause issues > "Data\SSBC.bat"
echo cd "{Your Super Smash Bros. Crusade directory here}" >> "Data\SSBC.bat"
echo START "" "SSBC.exe" >> "Data\SSBC.bat"
START "" "notepad.exe" "Data\SSBC.bat"
exit