#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (global.gamepadOn) on = true;
else
{
    on = false;
    sprite_index = sBox;
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (not on)
{
    on = true;
    sprite_index = sBoxChecked;
    global.gamepadOn = true;
}
else
{
    on = false;
    sprite_index = sBox;
    global.gamepadOn = false;
}
