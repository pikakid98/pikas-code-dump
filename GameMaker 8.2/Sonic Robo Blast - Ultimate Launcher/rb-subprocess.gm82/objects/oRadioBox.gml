#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on = false;

if (y == 32 and global.screenScale == 1)
{
    on = true
    sprite_index = sBoxMarked;
}
else if (y == 40 and global.screenScale == 2)
{
    on = true
    sprite_index = sBoxMarked;
}
else if (y == 48 and global.screenScale == 3)
{
    on = true
    sprite_index = sBoxMarked;
}
else if (y == 56 and global.screenScale == 4)
{
    on = true
    sprite_index = sBoxMarked;
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (not on)
{
    with oRadioBox
    {
        on = false;
        sprite_index = sBox;
    }

    on = true;
    sprite_index = sBoxMarked;

    if (y == 32) global.screenScale = 1;
    else if (y == 40) global.screenScale = 2;
    else if (y == 48) global.screenScale = 3;
    else if (y == 56) global.screenScale = 4;
}
