if file_exists(environment_get_variable("tmp") + "\SRBU\SRB2\LauncherBlast2-reBoot.exe")
{

} else {
execute_program_silent(temp_directory + '\7zr.exe x -o"' + environment_get_variable("tmp") + "\SRBU\SRB2" + '" Data\Main\SRB2.robo')
execute_program_silent(environment_get_variable("tmp") + '\SRBU\ultimatedata' + '\SRB2.bat')
}

set_working_directory("Data\User\SRB2")
execute_program(environment_get_variable("tmp") + "\SRBU\SRB2\" + 'LauncherBlast2-reBoot.exe',"",true)
set_working_directory(program_directory)
