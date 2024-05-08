#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = global.musicVol * 8;
focus = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (mouse_check_button(mb_left) and focus)
{
    x = mouse_x-4;
    if (x > 144+8) x = 144+8;
    if (x < 8+8) x = 8+8;
    y = 192;
    global.musicVol = floor(x / 8);
    SS_SetSoundVol(global.musCave, 2000 + 8000 * (global.musicVol/18));
}
else
{
    focus = false;
    move_snap(8, 8);
    y = 192;
    global.musicVol = x / 8;
    SS_StopSound(global.musCave);
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
focus = true;
SS_PlaySound(global.musCave, true);
