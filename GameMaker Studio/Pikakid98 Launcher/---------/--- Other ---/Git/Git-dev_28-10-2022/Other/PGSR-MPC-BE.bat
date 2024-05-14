@ECHO OFF

if exist "User\Util\MPC-BE.txt" (
del "User\Util\MPC-BE.txt" /S /Q

	if exist "Util\MPC-BE\mpc-be64.exe" (
	rmdir "Util\MPC-BE" /S /Q
	)

) else (
mkdir "User\Util"
ECHO Install MPC-BE >> "User\Util\MPC-BE.txt"
)