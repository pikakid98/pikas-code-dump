@ECHO OFF

if exist "Data\Pika's Greenscreen Repo\17-7-2022 @ 2-27 PM\Pika's Greenscreen Repo.m3u" (

	if exist "User\Util\MPC-BE.txt" (
	GOTO Check-For-MPC
	) ELSE (
	GOTO Installed
	)

) ELSE (
GOTO NotInstalled
)

:Check-For-MPC
if exist "Util\MPC-BE\mpc-be64.exe" (
GOTO Installed
) ELSE (
GOTO NotInstalled
)

::----------------------------------------------------------
:Installed
;Title [Launching] Pika's Greenscreen Repo (17-7-2022 @ 2-27 PM)

cd "Data\Pika's Greenscreen Repo\17-7-2022 @ 2-27 PM"

if exist "..\..\..\User\Util\MPC-BE.txt" (

START /wait "" "..\..\..\Util\MPC-BE\mpc-be64.exe" "Pika's Greenscreen Repo.m3u"
) ELSE (
START /wait "" "Pika's Greenscreen Repo.m3u"
)
ECHO close >> "..\..\..\User\close.txt"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
;Title [Downloading] Pika's Greenscreen Repo (17-7-2022 @ 2-27 PM)

mkdir "%tmp%\PL-Temp"

if exist "User\Util\MPC-BE.txt" (
call "Git\Other\MPC-BE-dl.bat"


	if exist "Data\Pika's Greenscreen Repo\17-7-2022 @ 2-27 PM\Pika's Greenscreen Repo.m3u" (
	GOTO End
	) ELSE (
	GOTO GS
	)

) ELSE (
GOTO GS
)

:GS

ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO URL = "https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/All/All.7z" >> %tmp%\PL-Temp\dl.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\dl.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\dl.vbs
ECHO. >> %tmp%\PL-Temp\dl.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\All.7z",objWinHttp.responseBody >> %tmp%\PL-Temp\dl.vbs
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

if exist "Data" (
GOTO Extract
) else (
mkdir "Data\Pika's Greenscreen Repo\17-7-2022 @ 2-27 PM"
GOTO Extract
)

:Extract
Util\7zr.exe x "%tmp%\PL-Temp\All.7z" -o"Data\Pika's Greenscreen Repo\17-7-2022 @ 2-27 PM"
GOTO End

:End
rmdir "%tmp%\PL-Temp" /S /Q
ECHO close >> "User\close.txt"
::----------------------------------------------------------