@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-pre-alpha-archive/releases/download/v0.0.1/Cat.Warfare.V0.0.1.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-pre-alpha-archive/releases/download/v0.0.2/Cat.Warfare.V0.0.2.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-pre-alpha-archive/releases/download/v0.0.3/Cat.Warfare.V0.0.3.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-pre-alpha-archive/releases/download/v0.0.4/Cat.Warfare.V0.0.4.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/cat-warfare-pre-alpha-archive/releases/download/v0.0.5a/Cat.Warfare.V0.0.5a.Pre-Alpha.7z --immediate --output-directory "%tmp%\PL-Temp"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.V0.0.1.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\v0.0.1"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.V0.0.2.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\v0.0.2"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.V0.0.3.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\v0.0.3"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.V0.0.4.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\v0.0.4"

7za.exe x "%tmp%\PL-Temp\Cat.Warfare.V0.0.5a.Pre-Alpha.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\v0.0.5a"

mkdir "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r"

ECHO @ECHO OFF >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ;Title Cat Warfare Pre-Alpha Launcher (v0.1 Recreation) [By Pikakid98] >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO cd "..\.." >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO CLS >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO 1. v0.0.1 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO 2. v0.0.2 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO 3. v0.0.3 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO 4. v0.0.4 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO 5. v0.0.5a >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO CHOICE /C 12345 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO IF ERRORLEVEL 5 GOTO v0.0.5a >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO IF ERRORLEVEL 4 GOTO v0.0.4 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO IF ERRORLEVEL 3 GOTO v0.0.3 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO IF ERRORLEVEL 2 GOTO v0.0.2 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO IF ERRORLEVEL 1 GOTO v0.0.1 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :v0.0.1 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO START /wait "" "v0.0.1\Build1.exe" >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO GOTO Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :v0.0.2 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO START /wait "" "v0.0.2\Build2.exe" >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO GOTO Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :v0.0.3 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO START /wait "" "v0.0.3\CatWarfare_PreAlphaBuild_3.exe" >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO GOTO Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :v0.0.4 >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO START /wait "" "v0.0.4\CatWarfare4.exe" >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO GOTO Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO. >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO :v0.0.5a >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO START /wait "" "v0.0.5a\CatWarfare5.3.0.exe" >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO GOTO Main >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"
ECHO ::---------------------------------------------------------- >> "%userprofile%\Documents\Pikakid98 Launcher\Cat Warfare Pre-Alpha Archive\Launcher\v0.1r\CW-PAL.bat"

rmdir /S /Q "%tmp%\PL-Temp"
rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------