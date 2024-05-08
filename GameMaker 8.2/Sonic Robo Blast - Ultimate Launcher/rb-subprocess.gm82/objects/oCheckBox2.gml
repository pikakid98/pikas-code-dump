#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (global.graphicsHigh) on = true;
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
    global.graphicsHigh = true;
}
else
{
    on = false;
    sprite_index = sBox;
    global.graphicsHigh = false;
}
