mkdir %LOCALAPPDATA%\Temp\Flash_Temp
7zr x "flash.pak" -o%LOCALAPPDATA%\Temp\Flash_Temp
del "7zr.exe" /S /Q

call "%LOCALAPPDATA%\Temp\Flash_Temp\run.bat"

rmdir /S /Q "%LOCALAPPDATA%\Temp\Flash_Temp"
echo close >> close.txt