#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = global.soundVol * 8;
focus = false;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (focus)
{
    SS_PlaySound(global.sndJump);
    alarm[0] = 20;
}
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
    y = 208;
    global.soundVol = floor(x / 8);
    SS_SetSoundVol(global.sndJump, 2000 + 8000 * (global.soundVol/18));
}
else
{
    focus = false;
    move_snap(8, 8);
    y = 208;
    global.soundVol = x / 8;
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
focus = true;
alarm[0] = 1;
