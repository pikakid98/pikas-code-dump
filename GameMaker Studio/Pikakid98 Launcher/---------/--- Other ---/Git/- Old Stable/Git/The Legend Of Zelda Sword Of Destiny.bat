@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/the-legend-of-zelda-sword-of-destiny/releases/download/v1.1/The.Legend.Of.Zelda.Sword.Of.Destiny.v1.1.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\The.Legend.Of.Zelda.Sword.Of.Destiny.v1.1.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------