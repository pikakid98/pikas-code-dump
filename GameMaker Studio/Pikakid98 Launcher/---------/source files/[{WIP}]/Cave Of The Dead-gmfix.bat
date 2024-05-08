@ECHO OFF
if exist "%userprofile%\Documents\Pikakid98 Launcher\Cave Of The Dead\v1.2.1\Cave Of The Dead (v1.2.1).exe.bak" (
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
;Title [Patching with gm8x_fix] Cave Of The Dead (v1.2.1)

gm8x_fix -s "%userprofile%\Documents\Pikakid98 Launcher\Cave Of The Dead\v1.2.1\Cave Of The Dead (v1.2.1).exe"
::----------------------------------------------------------