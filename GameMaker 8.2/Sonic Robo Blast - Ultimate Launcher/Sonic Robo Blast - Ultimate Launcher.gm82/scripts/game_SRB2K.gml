if file_exists(environment_get_variable("tmp") + "\SRBU\SRB2K\Nyoom Launcher.exe")
{

} else {
execute_program_silent(temp_directory + '\7zr.exe x -o"' + environment_get_variable("tmp") + "\SRBU\SRB2K" + '" Data\Main\SRB2K.robo')
execute_program_silent(environment_get_variable("tmp") + '\SRBU\ultimatedata' + '\SRB2K.bat')
}

set_working_directory("Data\User\SRB2K")
execute_program(environment_get_variable("tmp") + "\SRBU\SRB2K\" + 'Nyoom Launcher.exe',"",true)
set_working_directory(program_directory)
