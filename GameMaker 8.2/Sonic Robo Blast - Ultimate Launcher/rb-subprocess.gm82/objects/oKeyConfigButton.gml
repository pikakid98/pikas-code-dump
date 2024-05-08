#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sKeyConfigButtonPressed;
#define Mouse_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (sprite_index == sKeyConfigButtonPressed)
{
    scrSaveSettings();
    room_goto(rKeyConfig);
}
sprite_index = sKeyConfigButton;
#define Mouse_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sKeyConfigButton;
