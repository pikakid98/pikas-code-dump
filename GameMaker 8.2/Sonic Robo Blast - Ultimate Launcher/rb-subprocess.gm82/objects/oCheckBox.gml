#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (global.fullscreen) on = true;
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
    global.fullscreen = true;
}
else
{
    on = false;
    sprite_index = sBox;
    global.fullscreen = false;
}
