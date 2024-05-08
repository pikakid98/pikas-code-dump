#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance Off

;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-Set CompanyName, Pikakid98

if not FileExist(A_ScriptDir "\notepad2ahk.tmp") {
	FileInstall ".Cmpl8r\np2\Notepad2.exe", "notepad2ahk.tmp", 1
}

if not FileExist(A_ScriptDir "\Notepad2.ini") {
	FileInstall ".Cmpl8r\np2\Notepad2.ini", A_ScriptDir "\Notepad2.ini"
}

if not FileExist(A_ScriptDir "\Notepad2 DarkTheme.ini") {
	FileInstall ".Cmpl8r\np2\Notepad2 DarkTheme.ini", A_ScriptDir "\Notepad2 DarkTheme.ini"
}

if not FileExist(A_ScriptDir "\License.txt") {
	FileInstall ".Cmpl8r\np2\License.txt", A_ScriptDir "\License.txt"
}

SetWorkingDir A_ScriptDir

if A_Args.Length < 1
{
    SelectedFile := FileSelect(3, , "Open a file", "AutoHotkey script (*.ahk; *.scriptlet)")
	if SelectedFile = "" {
		ExitApp
	} else {
		RunWait "notepad2ahk.tmp" " " '"' SelectedFile '"'
		
		#Include cleanup.scriptlet
	}
}

Loop Files, A_Args[1], "F"

for n, param in A_Args
{
	RunWait "notepad2ahk.tmp" " " '"' A_Args[1] '"'
	
	#Include cleanup.scriptlet
}