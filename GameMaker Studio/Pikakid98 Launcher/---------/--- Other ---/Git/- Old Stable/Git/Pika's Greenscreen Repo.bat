@ECHO OFF
:Main
if exist "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14\Pika's Greenscreen Repo.m3u" (
    GOTO Installed
) else (
    GOTO NotInstalled
)


::----------------------------------------------------------
:Installed
START "" "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14\Pika's Greenscreen Repo.m3u"
exit
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
mkdir "incomplete"
mkdir "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/airhorn.shake.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Are.Ya.Winning.Son.Greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/asdf.movie.-.haha.comedy.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/capsule.walk.greenscreen.loop.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/come.outside.-.auntie.mabel.-.PIPPIN.NO.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14\"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/joseph.joestar.-.OOOOOH.NOOOOOO.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Michael.Rosen.-.Tidy.Your.Room.-.I.Dunno.gs.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Minecraft.Note.Block.With.Music.Notes.Greenscreen.Loop.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Organ.Trail.Gang.Member.Rolling.Greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14\"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Skinner.Says.Yes.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/troll.face.gs.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/volume.going.down.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/zelda.wog.-.oh.boy.greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

START /wait "" "HTTP_Downloader.exe" --portable --shutdown-action 1 --url https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/https://github.com/Git-Pikakid98/pikas-greenscreen-repo/releases/download/gs/Blonic.NO.Greenscreen.mp4 --immediate --output-directory "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

cd "%userprofile%\Documents\Pikakid98 Launcher\Pika's Greenscreen Repo\v14"

dir *.mp4 /B /S > "Pika's Greenscreen Repo.m3u

rmdir /S /Q "C:\incomplete"
rmdir /S /Q "incomplete"
::----------------------------------------------------------