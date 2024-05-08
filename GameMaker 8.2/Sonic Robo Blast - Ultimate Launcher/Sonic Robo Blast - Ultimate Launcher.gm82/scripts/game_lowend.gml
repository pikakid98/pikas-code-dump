if file_exists(environment_get_variable("tmp") + "\Sosig\Low-End\LD45.exe")
{

} else {
execute_program_silent(temp_directory + '\7zr.exe x -o"' + environment_get_variable("tmp") + "\Sosig\Low-End" + '" Low-End.sosig')
}

execute_program(environment_get_variable("tmp") + "\Sosig\Low-End\" + 'LD45.exe',"",true)
