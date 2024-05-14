@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Cave Of The Dead Remastered\v0.1.1\Cave Of The Dead Remastered v0.1.1.exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Cave Of The Dead Remastered\v0.1.1\Cave Of The Dead Remastered v0.1.1.exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cave-of-the-dead-remastered/releases/download/v0.1.1/Cave.Of.The.Dead.Remastered.V0.1.1.Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\Cave.Of.The.Dead.Remastered.V0.1.1.Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cave Of The Dead Remastered\v0.1.1"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------