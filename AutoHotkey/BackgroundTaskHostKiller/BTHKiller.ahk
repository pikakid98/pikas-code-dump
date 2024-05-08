#Requires AutoHotkey v2.0
#SingleInstance
;loop {
;if (PID := ProcessExist("BackgroundTaskHost.exe"))
;	ProcessClose "BackgroundTaskHost.exe"
;	Sleep 1000
;}

;Due to the unintentionally dangerous nature of this script and the possibility of it corrupting your install of Windows, it has been commented out to prevent accidentally clicking it