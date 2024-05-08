global.spelunkyEXE = oInit.levelName + ".robo";
window_set_visible(false)
execute_program_silent(temp_directory + '\7zr.exe x -o"' + environment_get_variable("tmp") + "\SRBU\" + global.spelunkyEXE + global.spelunkyEXE)
set_working_directory(environment_get_variable("tmp") + '\Data\User\' + global.spelunkyEXE)
execute_program("\SRBU\" + global.spelunkyEXE,"",true);
window_set_visible(true)
set_working_directory(program_directory)
