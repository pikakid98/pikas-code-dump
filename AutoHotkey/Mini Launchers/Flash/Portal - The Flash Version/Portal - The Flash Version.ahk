#Requires AutoHotkey v2.0
#NoTrayIcon

if (PID := ProcessExist("ruffle.exe"))
        RunWait 'Portal_wcs2.swf'
else
    MsgBox "Error! Please associate Ruffle with SWF files"