#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
startGame = false;

GET_FILE_NAME = 0;
status = 0;
blackOut = false;

msgTimer = 0;

global.spelunkyEXE = "Spelunky.exe";

global.myFont = font_add_sprite(sFont, ord(' '), false, 0);
global.myFontSmall = font_add_sprite(sFontSmall, ord(' '), false, 0);


//levelName = global.firstCustomLevel;
levelName = "";

// load level list
tempFile = file_find_first("*.robo", 0);
while (tempFile != "")
{
    if (string_char_at(tempFile, 0) != "!")
    {
        break;
    }
    tempFile = file_find_next();
}
levelList[0] = "";
levelList[0] = tempFile;
levelList[0] = string_delete(levelList[0], string_length(levelList[0])-3, 4);
numLevels = 1;
while (levelList[numLevels-1] != "")
{
    tempFile = file_find_next();
    if (tempFile != "")
    {
        if (string_char_at(tempFile, 0) != "!")
        {
            levelList[numLevels] = tempFile;
            levelList[numLevels] = string_delete(levelList[numLevels], string_length(levelList[numLevels])-3, 4);
            numLevels += 1;
        }
    }
    else
    {
        break;
    }
}
if (levelList[0] == "") numLevels = 0;

page = 1;
numPages = ceil(numLevels / 10);

instance_deactivate_object(oPageUp);
if (numPages <= 1) instance_deactivate_object(oPageDown);
#define Other_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
window_set_showtaskbar(false)
#define Other_30
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
game_end();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.myFontSmall);
draw_set_color(c_white);

if (status == GET_FILE_NAME)
{
    draw_text(view_xview[0]+16, view_yview[0]+16, "OPEN: " + levelName);
    draw_set_color(c_yellow);
    draw_text(view_xview[0]+16, view_yview[0]+48, "RUN:");
    draw_text(view_xview[0]+192, view_yview[0]+48, string(page) + "/" + string(numPages));
    if (msgTimer > 0)
    {
        draw_set_color(c_red);
        draw_text(view_xview[0]+32, view_yview[0]+176, "NO SUCH LEVEL EXISTS!");
    }
    //else draw_text(view_xview[0]+32, view_yview[0]+224, "PRESS ESCAPE TO RETURN TO TITLE.");
    draw_set_color(c_white);
    n = 64;
    m = 0;
    i = (page-1)*10;
    while (m < 10 and i+m < numLevels)
    {
        draw_text(view_xview[0]+16, view_yview[0]+n, string_upper(levelList[i+m]));
        n += 8;
        m += 1;
    }
}
#define KeyPress_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (keyboard_key == vk_escape)
{
    game_end();
}
else if (keyboard_key == vk_enter)
{
    scrExit();
}
else if (keyboard_key == vk_backspace or keyboard_key == vk_delete)
{
    levelName = string_delete(levelName, string_length(levelName), 1);
    with oMenuSel { sprite_index = sMenuSelOff; }
}
else
{
    levelName += scrGetChar(keyboard_key);
    with oMenuSel { sprite_index = sMenuSelOff; }
}
