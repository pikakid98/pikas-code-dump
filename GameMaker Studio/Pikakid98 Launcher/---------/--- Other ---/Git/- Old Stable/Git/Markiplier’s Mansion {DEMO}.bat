@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Markipliers Mansion {DEMO}\v0.1\Game.exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Markipliers Mansion {DEMO}\v0.1\Game.exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/markipliers-mansion-demo/releases/download/v0.1/Markiplier.s.Mansion.DEMO.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\Markiplier.s.Mansion.DEMO.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Markipliers Mansion {DEMO}\v0.1"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------