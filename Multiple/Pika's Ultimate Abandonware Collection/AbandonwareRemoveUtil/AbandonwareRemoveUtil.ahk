#Requires AutoHotkey v2.0
#NoTrayIcon
FileInstall "trash.png", A_Temp "\trash.png", 1

MyGui := Gui()

MyGui.Title := "Trashed By The Trashman"

myGui.OnEvent("Close", myGui_Close)
myGui_Close(thisGui) {
    FileDelete A_Temp "\trash.png"
}

MyGui.AddPicture("w300 h-1", A_Temp "\trash.png")

FakeLink := MyGui.Add("Text", , "")
FakeLink := MyGui.Add("Text", , "The following game/program has been trashed by the trashman as it is")
FakeLink := MyGui.Add("Text", , "either no longer considered abandonware, or has already been included")

MyGui.Show()