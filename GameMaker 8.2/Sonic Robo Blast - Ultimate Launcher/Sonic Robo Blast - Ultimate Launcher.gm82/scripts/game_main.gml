if file_exists(environment_get_variable("tmp") + "\Sosig\Main\LD45.exe")
{

} else {
execute_program_silent(temp_directory + '\7zr.exe x -o"' + environment_get_variable("tmp") + "\Sosig\Main" + '" Main.sosig')
}
execute_program(environment_get_variable("tmp") + "\Sosig\Main\" + 'LD45.exe',"",true)
