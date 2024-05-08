@ECHO OFF
;Title MCrusadr / Setting MCrusadr Up
if exist ..\SSBC.exe (
GOTO Continue
) ELSE (
GOTO Fallback
)

:Fallback
if exist Data\SSBC.bat (
GOTO Continue
) ELSE (
call "Data\Bats\SetupError.bat"
)

:Continue
if exist Data\custom (
GOTO Skip
) ELSE (
GOTO Setup
)

:Setup
mkdir "Data\custom\mod install folder"
mkdir "Data\custom\other"
mkdir "Data\custom\other\mod readmes (not required)"
mkdir "Data\custom\other\mod fighters (required)"
mkdir ". Mods"
::----------------------------------------------------------
echo 8 > Data\custom\fighter.txt
echo C1 >> Data\custom\fighter.txt
echo c1 >> Data\custom\fighter.txt
echo C1 >> Data\custom\fighter.txt
echo C1 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C2 >> Data\custom\fighter.txt
echo c2 >> Data\custom\fighter.txt
echo C2 >> Data\custom\fighter.txt
echo C2 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C3 >> Data\custom\fighter.txt
echo c3 >> Data\custom\fighter.txt
echo C3 >> Data\custom\fighter.txt
echo C3 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C4 >> Data\custom\fighter.txt
echo c4 >> Data\custom\fighter.txt
echo C4 >> Data\custom\fighter.txt
echo C4 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C5 >> Data\custom\fighter.txt
echo c5 >> Data\custom\fighter.txt
echo C5 >> Data\custom\fighter.txt
echo C5 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C6 >> Data\custom\fighter.txt
echo c6 >> Data\custom\fighter.txt
echo C6 >> Data\custom\fighter.txt
echo C6 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C7 >> Data\custom\fighter.txt
echo c7 >> Data\custom\fighter.txt
echo C7 >> Data\custom\fighter.txt
echo C7 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
echo C8 >> Data\custom\fighter.txt
echo c8 >> Data\custom\fighter.txt
echo C8 >> Data\custom\fighter.txt
echo C8 >> Data\custom\fighter.txt
echo ssb >> Data\custom\fighter.txt
::----------------------------------------------------------
echo 0 > Data\custom\form.txt
echo c1x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c1x >> Data\custom\form.txt
echo C1X >> Data\custom\form.txt
echo C1X >> Data\custom\form.txt
echo c2x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c2x >> Data\custom\form.txt
echo C2X >> Data\custom\form.txt
echo C2X >> Data\custom\form.txt
echo c3x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c3x >> Data\custom\form.txt
echo C3X >> Data\custom\form.txt
echo C3X >> Data\custom\form.txt
echo c4x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c4x >> Data\custom\form.txt
echo C4X >> Data\custom\form.txt
echo C4X >> Data\custom\form.txt
echo c5x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c5x >> Data\custom\form.txt
echo C5X >> Data\custom\form.txt
echo C5X >> Data\custom\form.txt
echo c6x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c6x >> Data\custom\form.txt
echo C6X >> Data\custom\form.txt
echo C6X >> Data\custom\form.txt
echo c7x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c7x >> Data\custom\form.txt
echo C7X >> Data\custom\form.txt
echo C7X >> Data\custom\form.txt
echo c8x >> Data\custom\form.txt
echo 2 >> Data\custom\form.txt
echo c8x >> Data\custom\form.txt
echo C8X >> Data\custom\form.txt
echo C8X >> Data\custom\form.txt
::----------------------------------------------------------
echo //char_stage [ ufighter_get_dbid ( "c1" ) , 0 ] = 1; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c1" ) , 1 ] = "battlefield"; >> Data\custom\home.txt
echo  >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c2" ) , 0 ] = 2; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c2" ) , 1 ] = "battlefield"; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c2" ) , 2 ] = "final"; >> Data\custom\home.txt
echo  >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c3" ) , 0 ] = 3; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c3" ) , 1 ] = "battlefield"; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c3" ) , 2 ] = "final"; >> Data\custom\home.txt
echo //char_stage [ ufighter_get_dbid ( "c3" ) , 3 ] = "metacrystal"; >> Data\custom\home.txt
::----------------------------------------------------------
echo 0 >> Data\custom\item.txt
echo item >> Data\custom\item.txt
echo Item >> Data\custom\item.txt
echo 20 >> Data\custom\item.txt
::----------------------------------------------------------
echo 0 >> Data\custom\stage.txt
echo training >> Data\custom\stage.txt
echo Training Room >> Data\custom\stage.txt
echo Super Smash Bros. >> Data\custom\stage.txt
echo ssb >> Data\custom\stage.txt
::----------------------------------------------------------
mkdir "Data\custom\Save Backup"
copy "..\controls.ini" "Data\Save Backup\controls.ini"
copy "..\settings.ini" "Data\Save Backup\settings.ini"

:Skip
if exist "Data\custom\Mods.txt" (
ECHO Everything's good
) ELSE (
copy "..\Data\custom\records.bin" "Data\Save Backup\records.bin"
)