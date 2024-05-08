#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//sprite_index = sOKButtonPressed;
#define Mouse_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
oInit.page -= 1;
with oMenuSel { sprite_index = sMenuSelOff; }
instance_activate_object(oPageDown);
if (oInit.page <= 1) instance_deactivate_object(oPageUp);
#define Mouse_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//sprite_index = sOKButton;
#define KeyPress_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
oInit.page -= 1;
with oMenuSel { sprite_index = sMenuSelOff; }
instance_activate_object(oPageDown);
if (oInit.page <= 1) instance_deactivate_object(oPageUp);
