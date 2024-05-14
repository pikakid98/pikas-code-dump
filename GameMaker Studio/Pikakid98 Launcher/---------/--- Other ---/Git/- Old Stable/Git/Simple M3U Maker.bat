@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Simple M3U Maker\v2.2.2\Simple M3U Maker (v2.2.2).exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Simple M3U Maker\v2.2.2\Simple M3U Maker (v2.2.2).exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/simple-m3u-maker/releases/download/v2.2.2/Simple.M3U.Maker.v2.2.2.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\Simple.M3U.Maker.v2.2.2.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Simple M3U Maker\v2.2.2"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------