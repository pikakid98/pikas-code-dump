#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sJoyConfigButtonPressed;
#define Mouse_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (sprite_index == sJoyConfigButtonPressed)
{
    scrSaveSettings();
    room_goto(rJoyConfig);
}
sprite_index = sJoyConfigButton;
#define Mouse_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sJoyConfigButton;
