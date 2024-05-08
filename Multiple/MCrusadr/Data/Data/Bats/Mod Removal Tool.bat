@ECHO OFF
;Title MCrusadr  /  Mod Removal Tool
ECHO ------------------------------------------------------
ECHO MCrusadr Mod Removal Tool (By Pikakid98)
ECHO ------------------------------------------------------
ECHO.
ECHO.
ECHO This will remove all installed mods
ECHO.
ECHO Continue?
ECHO 1. Yes
ECHO 2. No
ECHO.

CHOICE /C 12

IF ERRORLEVEL 2 GOTO No
IF ERRORLEVEL 1 GOTO Yes

::----------------------------------------------------------
:Yes
cd "..\"
del data\gunvolt_mash.dat
del fighter\gunvolt_mash.bin
del gfx\bust\gunvolt_mash.png
del gfx\bust\gunvolt_mash_1.png
del gfx\bust\gunvolt_mash_3.png
del gfx\bust\gunvolt_mash_4.png
del gfx\bust\gunvolt_mash_5.png
del gfx\bust\gunvolt_mash_6.png
del gfx\bust\gunvolt_mash_7.png
del gfx\bust\gunvolt_mash_8.png
del gfx\cbust\gunvolt_mash.png
del gfx\customhitspark\gunvolt_shothit_create.txt
del gfx\customhitspark\gunvolt_shothit_draw.txt
del gfx\customhitspark\gunvolt_shothit_step.txt
del gfx\mugs\gunvolt_mash.png
del gfx\portrait\gunvolt_mash.png
del gfx\portrait\gunvolt_mash_1.png
del gfx\portrait\gunvolt_mash_3.png
del gfx\portrait\gunvolt_mash_4.png
del gfx\portrait\gunvolt_mash_5.png
del gfx\portrait\gunvolt_mash_6.png
del gfx\portrait\gunvolt_mash_7.png
del gfx\portrait\gunvolt_mash_8.png"
del gfx\seriesicon\gunvolt.png
del gfx\stock\gunvolt_mash.png
del "music\versus\gunvolt_mash_Azure Striker Gunvolt - 1st Sumeragi__565069_2259095.ogg"
del music\victory\gunvolt.ogg
	::----------------------------------------------
del "data\kris render christmas.png"
del data\kris.dat
del fighter\kris.bin
del gfx\bust\kris.png
del gfx\bust\kris_1.png
del gfx\bust\kris_2.png
del gfx\bust\kris_3.png
del gfx\bust\kris_4.png
del gfx\bust\kris_5.png
del gfx\bust\kris_6.png
del gfx\bust\kris_7.png
del gfx\cbust\kris.png
del gfx\customhitspark\kris_rudebuster_create.txt
del gfx\customhitspark\kris_rudebuster_draw.txt
del gfx\customhitspark\kris_rudebuster_step.txt
del "gfx\mugs cmc+\kris.png"
del "gfx\mugs old\kris.png"
del gfx\portrait\kris.png
del gfx\portrait\kris_1.png
del gfx\portrait\kris_2.png
del gfx\portrait\kris_3.png
del gfx\portrait\kris_4.png
del gfx\portrait\kris_5.png
del gfx\portrait\kris_6.png
del gfx\portrait\kris_7.png
del gfx\seriesicon\deltarune.png
del gfx\stock\kris.png
del "music\versus\kris_Rude Buster - Deltarune.ogg"
del music\victory\individual\kris.ogg
del sfx\announcer\fighter\kris.wav
del sfx\kris\hmed.wav
del sfx\kris\hstrong.wav
del sfx\kris\hweak.wav
del sfx\kris\kris_hit_smash.wav
	::----------------------------------------------
del data\kfmbycielbami.dat
del fighter\kfmbycielbami.bin
del gfx\bust\kfmbycielbami.png
del gfx\bust\kfmbycielbami_1.png
del gfx\bust\kfmbycielbami_10.png
del gfx\bust\kfmbycielbami_11.png
del gfx\bust\kfmbycielbami_12.png
del gfx\bust\kfmbycielbami_13.png
del gfx\bust\kfmbycielbami_14.png
del gfx\bust\kfmbycielbami_15.png
del gfx\bust\kfmbycielbami_16.png
del gfx\bust\kfmbycielbami_17.png
del gfx\bust\kfmbycielbami_18.png
del gfx\bust\kfmbycielbami_2.png
del gfx\bust\kfmbycielbami_3.png
del gfx\bust\kfmbycielbami_4.png
del gfx\bust\kfmbycielbami_5.png
del gfx\bust\kfmbycielbami_6.png
del gfx\bust\kfmbycielbami_7.png
del gfx\bust\kfmbycielbami_8.png
del gfx\bust\kfmbycielbami_9.png
del gfx\cbust\kfmbycielbami.png
del gfx\mugs\kfmbycielbami.png
del gfx\portrait\kfmbycielbami.png
del gfx\portrait\kfmbycielbami_1.png
del gfx\portrait\kfmbycielbami_10.png
del gfx\portrait\kfmbycielbami_11.png
del gfx\portrait\kfmbycielbami_12.png
del gfx\portrait\kfmbycielbami_13.png
del gfx\portrait\kfmbycielbami_14.png
del gfx\portrait\kfmbycielbami_15.png
del gfx\portrait\kfmbycielbami_16.png
del gfx\portrait\kfmbycielbami_17.png
del gfx\portrait\kfmbycielbami_18.png
del gfx\portrait\kfmbycielbami_2.png
del gfx\portrait\kfmbycielbami_3.png
del gfx\portrait\kfmbycielbami_4.png
del gfx\portrait\kfmbycielbami_5.png
del gfx\portrait\kfmbycielbami_6.png
del gfx\portrait\kfmbycielbami_7.png
del gfx\portrait\kfmbycielbami_8.png
del gfx\portrait\kfmbycielbami_9.png
del gfx\seriesicon\mugen.png
del gfx\stock\kfmbycielbami.png
del "music\versus\kfmbycielbami_Kung Fu Man's Theme.mp3"
del music\victory\mugen.ogg
del sfx\announcer\fighter\kfmbycielbami.wav
del sfx\kfm\kfmfairbairhit.wav
del sfx\kfm\kfmfinalsmashhit1.wav
del sfx\kfm\kfmfinalsmashhit2.wav
del sfx\kfm\kfmfullusmashhit.wav
del sfx\kfm\kfmkickhit1.wav
del sfx\kfm\kfmkickhit2.wav
del sfx\kfm\kfmpunch1hit.wav
del sfx\kfm\kfmpunch2hit.wav
del sfx\kfm\kfmstiltdtilt2hit.wav
	::----------------------------------------------
del data\marisa_mash.dat
del fighter\marisa_mash.bin
del gfx\bust\marisa_mash.png
del gfx\bust\marisa_mash_1.png
del gfx\bust\marisa_mash_10.png
del gfx\bust\marisa_mash_11.png
del gfx\bust\marisa_mash_12.png
del gfx\bust\marisa_mash_13.png
del gfx\bust\marisa_mash_14.png
del gfx\bust\marisa_mash_2.png
del gfx\bust\marisa_mash_3.png
del gfx\bust\marisa_mash_4.png
del gfx\bust\marisa_mash_5.png
del gfx\bust\marisa_mash_6.png
del gfx\bust\marisa_mash_7.png
del gfx\bust\marisa_mash_8.png
del gfx\bust\marisa_mash_9.png
del gfx\cbust\marisa_mash.png
del gfx\mugs\marisa_mash.png
del gfx\portrait\marisa_mash.png
del gfx\portrait\marisa_mash_1.png
del gfx\portrait\marisa_mash_10.png
del gfx\portrait\marisa_mash_11.png
del gfx\portrait\marisa_mash_12.png
del gfx\portrait\marisa_mash_13.png
del gfx\portrait\marisa_mash_14.png
del gfx\portrait\marisa_mash_2.png
del gfx\portrait\marisa_mash_3.png
del gfx\portrait\marisa_mash_4.png
del gfx\portrait\marisa_mash_5.png
del gfx\portrait\marisa_mash_6.png
del gfx\portrait\marisa_mash_7.png
del gfx\portrait\marisa_mash_8.png
del gfx\portrait\marisa_mash_9.png
del gfx\seriesicon\touhou.png
del gfx\stock\marisa_mash.png
del "music\versus\marisa_mash_Touhou Eiyashou ~ Imperishable Night - Love Colored Master Spark__34114_5623843.ogg"
del sfx\announcer\fighter\marisa_mash.wav
del sfx\marisa_mash\marisahit1.wav
del sfx\marisa_mash\marisahit2.wav
del sfx\marisa_mash\marisahit3.wav
del sfx\marisa_mash\marisahitshock.wav
	::----------------------------------------------
del data\flandre.dat
del fighter\flandre.bin
del gfx\bust\flandre.png
del gfx\bust\flandre_2.png
del gfx\bust\flandre_3.png
del gfx\bust\flandre_4.png
del gfx\bust\flandre_5.png
del gfx\bust\flandre_6.png
del gfx\bust\flandre_7.png
del gfx\bust\flandre_8.png
del gfx\mugs\flandre.png
del gfx\stock\flandre.png
del "music\versus\flandre_U.N. Owen was Her.ogg"
	::----------------------------------------------
cd "gfx"
rmdir /S /Q "mugs cmc+\"
rmdir /S /Q "mugs old\"
rmdir /S /Q "customhitspark\"
cd "..\sfx"
rmdir /S /Q "kfm\"
rmdir /S /Q "kris\"
rmdir /S /Q "marisa_mash\"
cd "..\"
	::----------------------------------------------
cd ". MCrusadr"
del "Data\Mods.txt"
	::----------------------------------------------

	::----------------------------------------------
cd "..\"
del "data\secret.txt"
del "data\cssfull.txt"
echo 0062 0001 0005 0019 0046 0053 0051 0022 0040 0020 0032 0050 >> data\cssfull.txt
echo 0029 >> data\cssfull.txt
echo 0002 0008 0038 0059 0010 0011 0017 0034 0047 0055 0037 0035 >> data\cssfull.txt
echo 0026 >> data\cssfull.txt
echo 0009 0025 0033 0006 0039 0023 0016 0056 0015 0049 0027 0048 >> data\cssfull.txt
echo 0042 >> data\cssfull.txt
echo 0045 0030 0007 0054 0031 0041 0063 0064 0012 0004 0044 0043 >> data\cssfull.txt
echo 0036 >> data\cssfull.txt
echo 9999 0052 0058 0018 0028 0057 0021 0024 0003 0065 0013 0014 >> data\cssfull.txt
echo 9999 >> data\cssfull.txt
	::----------------------------------------------
echo 8 >> data\secret.txt
echo C1 >> data\secret.txt
echo c1 >> data\secret.txt
echo C1 >> data\secret.txt
echo C1 >> data\secret.txt
echo ssb >> data\secret.txt
echo C2 >> data\secret.txt
echo c2 >> data\secret.txt
echo C2 >> data\secret.txt
echo C2 >> data\secret.txt
echo C2 >> data\secret.txt
echo ssb >> data\secret.txt
echo C3 >> data\secret.txt
echo c3 >> data\secret.txt
echo C3 >> data\secret.txt
echo C3 >> data\secret.txt
echo ssb >> data\secret.txt
echo C4 >> data\secret.txt
echo c4 >> data\secret.txt
echo C4 >> data\secret.txt
echo C4 >> data\secret.txt
echo ssb >> data\secret.txt
echo C5 >> data\secret.txt
echo c5 >> data\secret.txt
echo C5 >> data\secret.txt
echo C5 >> data\secret.txt
echo sbb >> data\secret.txt
echo C6 >> data\secret.txt
echo c6 >> data\secret.txt
echo C6 >> data\secret.txt
echo C6 >> data\secret.txt
echo sbb >> data\secret.txt
echo C7 >> data\secret.txt
echo c7 >> data\secret.txt
echo C7 >> data\secret.txt
echo C7 >> data\secret.txt
echo ssb >> data\secret.txt
echo C8 >> data\secret.txt
echo c8 >> data\secret.txt
echo C8 >> data\secret.txt
echo C8 >> data\secret.txt
echo ssb >> data\secret.txt
exit
::----------------------------------------------------------

::----------------------------------------------------------
:No
call "Data\run.bat"
::----------------------------------------------------------