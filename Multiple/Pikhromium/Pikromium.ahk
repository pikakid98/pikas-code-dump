#Requires Autohotkey v2.0
#NoTrayIcon

FileInstall "7zr.exe", A_Temp "\7zr.exe", 1
FileInstall "extract.bat", A_Temp "\extract.bat", 1

; Check for args
if A_Args.Length < 3
{
    MsgBox "Please run via Playnite or the command line"
	FileDelete A_Temp "\7zr.exe"
	FileDelete A_Temp "\extract.bat"
	if DirExist(A_Temp "\Pchr") {
		DirDelete A_Temp "\Pchr", 1
	}
    ExitApp
}

; Check for Ungoogled Chromium.pak
if not FileExist(A_ScriptDir "\Paks\Ungoogled Chromium.pak")
{
	MsgBox "Ungoogled Chromium.pak is missing"
	FileDelete A_Temp "\7zr.exe"
	FileDelete A_Temp "\extract.bat"
	if DirExist(A_Temp "\Pchr") {
		DirDelete A_Temp "\Pchr", 1
	}
	ExitApp
}

; Check for uBlock Origin Lite.pak
if not FileExist(A_ScriptDir "\Paks\uBlock Origin Lite.pak")
{
	MsgBox "uBlock Origin Lite.pak is missing"
	FileDelete A_Temp "\7zr.exe"
	FileDelete A_Temp "\extract.bat"
	if DirExist(A_Temp "\Pchr") {
		DirDelete A_Temp "\Pchr", 1
	}
	ExitApp
}

; Extract Paks
RunWait A_Temp "\extract.bat" , , "Hide"

; Check if Ungoogled Chromium.pak has extracted
if not FileExist(A_Temp "\Pchr\Pikromium.exe")
{
	MsgBox "Ungoogled Chromium.pak has failed to extract"
	FileDelete A_Temp "\7zr.exe"
	FileDelete A_Temp "\extract.bat"
	if DirExist(A_Temp "\Pchr") {
		DirDelete A_Temp "\Pchr", 1
	}
	ExitApp
}

; Check if uBlock Origin Lite.pak has extracted
if not DirExist(A_Temp "\Pchr\uBO")
{
	MsgBox "uBlock Origin Lite.pak has failed to extract"
	FileDelete A_Temp "\7zr.exe"
	FileDelete A_Temp "\extract.bat"
	if DirExist(A_Temp "\Pchr") {
		DirDelete A_Temp "\Pchr", 1
	}
	ExitApp
}

FileDelete A_Temp "\7zr.exe"
FileDelete A_Temp "\extract.bat"

; Parse arguments
for n, param in A_Args  ; For each parameter:
{
	RunWait A_Temp "\Pchr\Pikromium.exe" " " "--app=" "" A_Args[2] " " "--window-size=" "" A_Args[3] " " "--user-data-dir=" '"' A_ScriptDir "" "\Games\" "" A_Args[1] "" "\Data" '"' " " "--force-dark-mode --load-extension=" A_Temp "\Pchr\uBO"

	PID := ProcessWait("Pikromium.exe",  5)

	DirDelete A_Temp "\Pchr", 1
	ExitApp
}