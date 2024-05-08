@ECHO OFF
cd "..\..\Videopad\files\cache"

rmdir VideoPadCache /S /Q

cd ".."
rmdir "videos" /S /Q
mkdir "videos"

cd "..\..\My Tools\VideoPad Cache Cleaner"

START "" "App\VideoPad Cache Cleaner\msg.vbs"