#Requires AutoHotkey v2.0
#NoTrayIcon

if FileExist("MinecraftLauncher.exe") {
	loop {
		RunWait "MinecraftLauncher.exe"
		PID := ProcessWait("NativeUpdater.exe")

		if !WinWaitClose("java.exe",, 5)
		{
			MsgBox "Window not yet closed: " WinGetTitle()
			WinClose
		}

		if !WinWaitClose("javaw.exe",, 5)
		{
			MsgBox "Window not yet closed: " WinGetTitle()
			WinClose
		}
	}
} else {
	MsgBox "Minecraft Launcher has not been installed. Please download it from minecraft.net"
}