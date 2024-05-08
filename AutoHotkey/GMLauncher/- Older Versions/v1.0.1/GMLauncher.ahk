#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance

;@Ahk2Exe-Set FileVersion, 1.0.1
;@Ahk2Exe-Set ProductVersion, 1.0.1.0

if A_Args.Length < 1
{
    MsgBox "Error! Please launch this via a file associated with Game Maker 8.1 and prior"
    ExitApp
}

IniWrite "", A_Temp "\gm.ini", "launch", "gm"

MyGui := Gui()

; call dark mode for window title + menu
SetWindowAttribute(MyGui)

; call dark mode for controls
SetWindowTheme(MyGui)

#include DarkMode.scriptlet

MyGui.Title := "GMLauncher"

myGui.OnEvent("Close", myGui_Close)
myGui_Close(thisGui) {
	FileDelete A_Temp "\gm.ini"
	ExitApp
}

for n, param in A_Args  ; For each parameter:
{

FakeLink := MyGui.Add("Text", , "This file appears to be made with or for an older version of Game Maker")
FakeLink := MyGui.Add("Text", , "")

FakeLink := MyGui.Add("Text", "cwhite" , "Project: " A_Args[1])
FakeLink := MyGui.Add("Text", , "")

MyRadio := MyGui.AddRadio("vMyRadioGroup cwhite", "GameMaker 8.1")
MyRadio.OnEvent("Click", MyBtn_op1)

MyRadio2 := MyGui.AddRadio("vMyRadioGroup2 cwhite", "GameMaker 8.2")
MyRadio2.OnEvent("Click", MyBtn_op2)

MyBtn := MyGui.AddButton("Default w80", "OK")
MyBtn.OnEvent("Click", MyBtn_Click)

MyBtn_op1(*)
{
	IniWrite "GameMaker", A_Temp "\gm.ini", "launch", "gm"
}

MyBtn_op2(*)
{
	IniWrite "GameMaker8.2", A_Temp "\gm.ini", "launch", "gm"
}

MyBtn_Click(*) {
Value := IniRead(A_Temp "\gm.ini", "launch", "gm")

if Value := IniRead(A_Temp "\gm.ini", "launch", "gm", "")
	{
		MyGui.Hide()
		RunWait A_AppData "\" Value "\GameMaker.exe" " " '"' A_Args[1] '"'
		FileDelete A_Temp "\gm.ini"
	} else {
		MyGui.Hide()
		MsgBox "Error! Please select an option", "Error!"
		MyGui.Show()
	}
}

}

MyGui.Show()