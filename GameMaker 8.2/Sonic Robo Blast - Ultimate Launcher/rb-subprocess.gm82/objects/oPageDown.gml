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
oInit.page += 1;
with oMenuSel { sprite_index = sMenuSelOff; }
instance_activate_object(oPageUp);
if (oInit.page >= oInit.numPages) instance_deactivate_object(oPageDown);
#define Mouse_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//sprite_index = sOKButton;
#define KeyPress_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
oInit.page += 1;
with oMenuSel { sprite_index = sMenuSelOff; }
instance_activate_object(oPageUp);
if (oInit.page >= oInit.numPages) instance_deactivate_object(oPageDown);
