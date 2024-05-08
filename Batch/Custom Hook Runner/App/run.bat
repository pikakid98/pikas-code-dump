:parse
IF "%~2"=="" GOTO endparse
IF "%~2"=="-dxwnd" GOTO dxwnd
IF "%~2"=="-le" GOTO le
SHIFT
GOTO parse
:endparse
GOTO end

:dxwnd
START "" "%DXWnd%\dxwnd.exe" /T
:Loop
tasklist /FI "IMAGENAME eq dxwnd.exe" 2>NUL | find /I /N "dxwnd.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO run
CLS
timeout 3
GOTO Loop

:run
START /wait "" "%~1"
taskkill /IM "dxwnd.exe"
GOTO end

:le
START /wait "" "%LocaleEmulator%\LEProc.exe" "%~1"

:end
exit