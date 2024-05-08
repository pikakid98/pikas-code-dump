@ECHO OFF

if exist "Data\Cat Warfare Pre-Alpha Archive\Launcher\v1.2" (
    GOTO Installed
) else (
    GOTO NotInstalled
)

::----------------------------------------------------------
:Installed
;Title [portable] Cat Warfare Pre-Alpha Archive

if exist "Data\Cat Warfare Pre-Alpha Archive\Launcher\v1.2\portable.txt" (
	del "Data\Cat Warfare Pre-Alpha Archive\Launcher\v1.2\portable.txt" /S /Q
	del "Data\Cat Warfare Pre-Alpha Archive\Launcher\portable.txt" /S /Q
	exit
) else (
	ECHO portable >> "Data\Cat Warfare Pre-Alpha Archive\Launcher\v1.2\portable.txt"
	ECHO portable >> "Data\Cat Warfare Pre-Alpha Archive\Launcher\portable.txt"
	exit
)
::----------------------------------------------------------

::----------------------------------------------------------
:NotInstalled
exit
::----------------------------------------------------------