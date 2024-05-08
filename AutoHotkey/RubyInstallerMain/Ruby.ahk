#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance

;@Ahk2Exe-Set CompanyName, Pikakid98
;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-ConsoleApp

RunWait A_ComSpec " " "/E:ON /K " A_ScriptDir "\bin\ridk enable"