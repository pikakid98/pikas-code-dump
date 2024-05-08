@ECHO OFF
cd "..\..\"
"tools\7z.exe" a "Backups\%date:~-10,2%-%date:~-7,2%-%date:~-4,4% @ %time:~0,2%-%time:~3,2%-%time:~6,2%" "C:\Program Files (x86)\Steam\appcache\appinfo.vdf" "C:\Program Files (x86)\Steam\appcache\packageinfo.vdf"