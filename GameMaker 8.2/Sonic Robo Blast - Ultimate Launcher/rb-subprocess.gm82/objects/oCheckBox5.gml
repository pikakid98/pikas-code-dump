#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on = true;
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
}
else
{
    on = false;
    sprite_index = sBox;
}
