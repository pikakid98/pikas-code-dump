#Requires AutoHotkey v2.0
ConnectedToInternet(flag:=0x40) {
Return DllCall("Wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0)
}

If ConnectedToInternet()
MsgBox "Connected!"

If Not ConnectedToInternet()
MsgBox "Error. Please connect to the internet to continue"

