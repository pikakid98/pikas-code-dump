@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Skin Creator\v1.0\CatWarfare Skin Creator.exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Skin Creator\v1.0\CatWarfare Skin Creator.exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-skin-creator/releases/download/v1.0/Cat.Warfare.Skin.Creator.V1.0.0.Beta.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.Skin.Creator.V1.0.0.Beta.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Skin Creator\v1.0"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------