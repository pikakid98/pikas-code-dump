#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
status = 0;
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
file = file_text_open_write("keys.cfg");
file_text_write_string(file, string(global.keyUpVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyDownVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyLeftVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRightVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyJumpVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyAttackVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyItemVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRunVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyBombVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyRopeVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyFlareVal));
file_text_writeln(file);
file_text_write_string(file, string(global.keyPayVal));
file_text_close(file);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

/**********************************************************************************
    Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC

    This file is part of Spelunky.

    You can redistribute and/or modify Spelunky, including its source code, under
    the terms of the Spelunky User License.

    Spelunky is distributed in the hope that it will be entertaining and useful,
    but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.

    The Spelunky User License should be available in "Game Information", which
    can be found in the Resource Explorer, or as an external file called COPYING.
    If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>

***********************************************************************************/

draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
//draw_text(8, 0, "KEY CONFIG:");
strLen = string_length("PRESS KEY FOR")*8;
n = 160 - strLen;
n = ceil(n / 2);
draw_text(n, 32, "PRESS KEY FOR");
draw_text(8, 96, "ESC TO KEEP SAME.");
draw_text(8, 104, "CURRENT: ");

if (status == 0)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("UP")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "UP");
    currVal = global.keyUpVal;
}
else if (status == 1)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("DOWN")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "DOWN");
    currVal = global.keyDownVal;
}
else if (status == 2)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("LEFT")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "LEFT");
    currVal = global.keyLeftVal;
}
else if (status == 3)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("RIGHT")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "RIGHT");
    currVal = global.keyRightVal;
}
else if (status == 4)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("JUMP")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "JUMP");
    currVal = global.keyJumpVal;
}
else if (status == 5)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ACTION")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "ACTION");
    currVal = global.keyAttackVal;
}
else if (status == 6)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("SWITCH")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "SWITCH");
    currVal = global.keyItemVal;
}
else if (status == 7)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("RUN")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "RUN");
    currVal = global.keyRunVal;
}
else if (status == 8)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("BOMB")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "BOMB");
    currVal = global.keyBombVal;
}
else if (status == 9)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("ROPE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "ROPE");
    currVal = global.keyRopeVal;
}
else if (status == 10)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("PURCHASE")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 48, "PURCHASE");
    currVal = global.keyPayVal;
}

draw_set_font(global.myFontSmall);
switch (currVal)
{
    case vk_up: { draw_text(80, 104, "UP ARR"); break; }
    case vk_down: { draw_text(80, 104, "DOWN ARR"); break; }
    case vk_left: { draw_text(80, 104, "LEFT ARR"); break; }
    case vk_right: { draw_text(80, 104, "RIGHT ARR"); break; }
    case vk_shift: { draw_text(80, 104, "SHIFT"); break; }
    case vk_control: { draw_text(80, 104, "CTRL"); break; }
    case vk_alt: { draw_text(80, 104, "ALT"); break; }
    case vk_space: { draw_text(80, 104, "SPACE"); break; }
    case vk_enter: { draw_text(80, 104, "ENTER"); break; }
    case ord("A"): { draw_text(80, 104, "A"); break; }
    case ord("B"): { draw_text(80, 104, "B"); break; }
    case ord("C"): { draw_text(80, 104, "C"); break; }
    case ord("D"): { draw_text(80, 104, "D"); break; }
    case ord("E"): { draw_text(80, 104, "E"); break; }
    case ord("F"): { draw_text(80, 104, "F"); break; }
    case ord("G"): { draw_text(80, 104, "G"); break; }
    case ord("H"): { draw_text(80, 104, "H"); break; }
    case ord("I"): { draw_text(80, 104, "I"); break; }
    case ord("J"): { draw_text(80, 104, "J"); break; }
    case ord("K"): { draw_text(80, 104, "K"); break; }
    case ord("L"): { draw_text(80, 104, "L"); break; }
    case ord("M"): { draw_text(80, 104, "M"); break; }
    case ord("N"): { draw_text(80, 104, "N"); break; }
    case ord("O"): { draw_text(80, 104, "O"); break; }
    case ord("P"): { draw_text(80, 104, "P"); break; }
    case ord("Q"): { draw_text(80, 104, "Q"); break; }
    case ord("R"): { draw_text(80, 104, "R"); break; }
    case ord("S"): { draw_text(80, 104, "S"); break; }
    case ord("T"): { draw_text(80, 104, "T"); break; }
    case ord("U"): { draw_text(80, 104, "U"); break; }
    case ord("V"): { draw_text(80, 104, "V"); break; }
    case ord("W"): { draw_text(80, 104, "W"); break; }
    case ord("X"): { draw_text(80, 104, "X"); break; }
    case ord("Y"): { draw_text(80, 104, "Y"); break; }
    case ord("Z"): { draw_text(80, 104, "Z"); break; }
    default: { draw_text(80, 104, "KEY " + string(currVal)); break; }
}
#define KeyPress_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (keyboard_key != vk_escape)
{
if (status == 0)
{
    global.keyUpVal = keyboard_key;
}
else if (status == 1)
{
    global.keyDownVal = keyboard_key;
}
else if (status == 2)
{
    global.keyLeftVal = keyboard_key;
}
else if (status == 3)
{
    global.keyRightVal = keyboard_key;
}
else if (status == 4)
{
    global.keyJumpVal = keyboard_key;
}
else if (status == 5)
{
    global.keyAttackVal = keyboard_key;
}
else if (status == 6)
{
    global.keyItemVal = keyboard_key;
}
else if (status == 7)
{
    global.keyRunVal = keyboard_key;
}
else if (status == 8)
{
    global.keyBombVal = keyboard_key;
}
else if (status == 9)
{
    global.keyRopeVal = keyboard_key;
}
else if (status == 10)
{
    global.keyPayVal = keyboard_key;
}
}

status += 1;
if (status > 10) room_goto(rInit);
