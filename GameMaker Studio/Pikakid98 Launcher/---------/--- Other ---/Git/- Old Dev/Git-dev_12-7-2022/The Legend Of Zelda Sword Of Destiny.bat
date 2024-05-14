@ECHO OFF
if exist "portable.txt" (
GOTO Check-P
) else (
GOTO Check-NP
)

:Check-P
if exist "Data\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe" (
    GOTO Installed-P
) else (
    GOTO NotInstalled
)

:Check-NP
if exist "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe" (
    GOTO Installed
) else (
    GOTO NotInstalled
)

::----------------------------------------------------------
:Installed
;Title [Launching] The Legend Of Zelda Sword Of Destiny (v1.1)

START "" "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe"
exit

:Installed-P
;Title [Launching] The Legend Of Zelda Sword Of Destiny (v1.1)

START "" "Data\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
;Title [Downloading] The Legend Of Zelda Sword Of Destiny (v1.1)

mkdir "%tmp%\PL-Temp"

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO URL = "https://github.com/Git-Pikakid98/the-legend-of-zelda-sword-of-destiny/releases/download/v1.1/The.Legend.Of.Zelda.Sword.Of.Destiny.v1.1.7z" >> %tmp%\PL-Temp\dl.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\dl.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\The.Legend.Of.Zelda.Sword.Of.Destiny.v1.1.7z",objWinHttp.responseBody >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\dl.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\dl.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\dl.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\dl.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\dl.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\dl.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\dl.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\dl.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO End Function >> %tmp%\PL-Temp\dl.vbs

START /wait "" "%tmp%\PL-Temp\dl.vbs"

if exist "portable.txt" (
GOTO Portable
) else (
GOTO Not Portable
)

:Portable
if exist "Data" (
GOTO Extract-P
) else (
mkdir "Data\The Legend Of Zelda - Sword Of Destiny\v1.1"
GOTO Extract-P
)

:Not Portable
if exist "%userprofile%\Documents\Pikakid98 Launcher" (
GOTO Extract-NP
) else (
mkdir "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.11"
GOTO Extract-NP
)

:Extract-NP
7za.exe x "%tmp%\PL-Temp\The.Legend.Of.Zelda.Sword.Of.Destiny.v1.1.7z" -o"%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1"
GOTO End

:Extract-P
7za.exe x "%tmp%\PL-Temp\PHE.Adventures.V0.0.1.Pre-Alpha.7z" -o"Data\The Legend Of Zelda - Sword Of Destiny\v1.1"
GOTO End

:End
rmdir "%tmp%\PL-Temp" /S /Q
::----------------------------------------------------------