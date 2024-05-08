#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
status = 0;
joy = false;
joyid = 1;
if (not joystick_exists(1) and joystick_exists(2))
{
    joyid = 2;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
joyReleased = false;
joyPressed = false;
joyKey = checkJoyButton();
if (joy)
{
    if (joyKey != 0) joy = true;
    else
    {
        joyReleased = true;
        joy = false;
    }
}
else
{
    if (joyKey != 0)
    {
        joyPressed = true;
        joy = true;
    }
    else joy = false;
}

if (joyPressed)
{
if (status == 0)
{
    global.joyJumpVal = joyKey;
}
else if (status == 1)
{
    global.joyAttackVal = joyKey;
}
else if (status == 2)
{
    global.joyItemVal = joyKey;
}
else if (status == 3)
{
    global.joyRunVal = joyKey;
}
else if (status == 4)
{
    global.joyBombVal = joyKey;
}
else if (status == 5)
{
    global.joyRopeVal = joyKey;
}
else if (status == 6)
{
    global.joyPayVal = joyKey;
}
else if (status == 7)
{
    global.joyStartVal = joyKey;
}}

if (joyPressed or keyboard_check_pressed(vk_escape))
{
    status += 1;
    if (status > 7) room_goto(rInit);
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
file = file_text_open_write("gamepad.cfg");
file_text_write_string(file, string(global.joyJumpVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyAttackVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyItemVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyRunVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyBombVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyRopeVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyFlareVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyPayVal));
file_text_writeln(file);
file_text_write_string(file, string(global.joyStartVal));
file_text_close(file);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
//draw_text(8, 0, "JOY CONFIG:");
strLen = string_length("PRESS BUTTON FOR")*8;
n = 160 - strLen;
n = ceil(n / 2);
draw_text(n, 32, "PRESS BUTTON FOR");
draw_text(8, 96, "ESC TO KEEP SAME.");
draw_text(8, 104, "CURRENT: ");

if (not joystick_exists(1) and not joystick_exists(2))
{
    draw_set_color(c_red);
    draw_text(8, 88, "NO GAMEPAD FOUND!");
}
else if (joystick_exists(1) and joystick_exists(2))
{
    draw_set_color(c_yellow);
    draw_text(8, 88, "JOY1 / JOY2 FOUND!");
}
else if (joystick_exists(1))
{
    draw_set_color(c_yellow);
    draw_text(8, 88, "JOY1 FOUND!");
}
else if (joystick_exists(2))
{
    draw_set_color(c_yellow);
    draw_text(8, 88, "JOY2 FOUND!");
}

if (status == 0)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("JUMP")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "JUMP");
    currVal = global.joyJumpVal;
}
else if (status == 1)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ACTION")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "ACTION");
    currVal = global.joyAttackVal;
}
else if (status == 2)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("SWITCH")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "SWITCH");
    currVal = global.joyItemVal;
}
else if (status == 3)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("RUN")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "RUN");
    currVal = global.joyRunVal;
}
else if (status == 4)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("BOMB")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "BOMB");
    currVal = global.joyBombVal;
}
else if (status == 5)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ROPE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "ROPE");
    currVal = global.joyRopeVal;
}
else if (status == 6)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("PURCHASE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "PURCHASE");
    currVal = global.joyPayVal;
}
else if (status == 7)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("START")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "START");
    currVal = global.joyStartVal;
}

draw_set_font(global.myFontSmall);
switch (currVal)
{
    case 1: { draw_text(80, 104, "B1"); break; }
    case 2: { draw_text(80, 104, "B2"); break; }
    case 3: { draw_text(80, 104, "B3"); break; }
    case 4: { draw_text(80, 104, "B4"); break; }
    case 5: { draw_text(80, 104, "B5"); break; }
    case 6: { draw_text(80, 104, "B6"); break; }
    case 7: { draw_text(80, 104, "B7"); break; }
    case 8: { draw_text(80, 104, "B8"); break; }
    case 9: { draw_text(80, 104, "B9"); break; }
    case 10: { draw_text(80, 104, "B10"); break; }
    case -1: { draw_text(80, 104, "LT (XB)"); break; }
    case -2: { draw_text(80, 104, "RT (XB)"); break; }
    default: { draw_text(80, 104, "B" + string(currVal)); break; }
}
