@ECHO OFF
ECHO Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1") >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO URL = "https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/All/MPC-BE.7z" >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO objWinHttp.open "GET", URL, False >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO objWinHttp.send "" >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO SaveBinaryData "%tmp%\PL-Temp\MPC-BE.7z",objWinHttp.responseBody >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO Function SaveBinaryData(FileName, Data) >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO ' adTypeText for binary = 1 >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO Const adTypeText = 1 >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO Const adSaveCreateOverWrite = 2 >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO ' Create Stream object >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO Dim BinaryStream >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO Set BinaryStream = CreateObject("ADODB.Stream") >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO ' Specify stream type - we want To save Data/string data. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO BinaryStream.Type = adTypeText >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO ' Open the stream And write binary data To the object >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO BinaryStream.Open >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO BinaryStream.Write Data >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO ' Save binary data To disk >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO BinaryStream.SaveToFile FileName, adSaveCreateOverWrite >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO. >> %tmp%\PL-Temp\dl-mpc.vbs
ECHO End Function >> %tmp%\PL-Temp\dl-mpc.vbs

START /wait "" "%tmp%\PL-Temp\dl-mpc.vbs"
del "%tmp%\PL-Temp\dl-mpc.vbs" /S /Q

Util\7zr.exe x "%tmp%\PL-Temp\MPC-BE.7z" -o"Util\MPC-BE"