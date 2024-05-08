@ECHO OFF
;Title MCrusadr / Launching

if exist .".\SSBC.exe" (
START "" "..\SSBC.exe"
exit
) ELSE (
GOTO Fallback
)


:Fallback

if exist "Data\SSBC.bat" (
call "SSBC.bat"
exit
) ELSE (
call "Data\SetupError.bat"
exit
)