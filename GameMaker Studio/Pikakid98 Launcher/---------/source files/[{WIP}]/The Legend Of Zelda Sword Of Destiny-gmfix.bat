@ECHO OFF
if exist "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe.bak" (
    GOTO Patched
) else (
    GOTO Patch
)


::----------------------------------------------------------
:Patched
exit
::----------------------------------------------------------

::----------------------------------------------------------
:Patch
;Title [Patching with gm8x_fix] The Legend Of Zelda Sword Of Destiny (v1.1)

gm8x_fix -s "%userprofile%\Documents\Pikakid98 Launcher\The Legend Of Zelda - Sword Of Destiny\v1.1\The Legend Of Zelda Sword Of Destiny (v1.1).exe"
::----------------------------------------------------------