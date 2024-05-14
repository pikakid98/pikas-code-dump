@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\PHE Adventures\v0.0.1\PHE Adventures.exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\PHE Adventures\v0.0.1\PHE Adventures.exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/phe-adventures/releases/download/v0.0.1/PHE.Adventures.V0.0.1.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\PHE.Adventures.V0.0.1.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\PHE Adventures\v0.0.1"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------