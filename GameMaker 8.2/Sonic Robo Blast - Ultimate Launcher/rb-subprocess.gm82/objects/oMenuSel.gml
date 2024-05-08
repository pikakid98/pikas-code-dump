#define Mouse_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
n = (y - 64) / 8;
if (n+1 <= (oInit.numLevels - (oInit.page-1)*10))
{
    oInit.levelName = string_upper(oInit.levelList[(oInit.page-1)*10+n]);
    //global.spelunkyEXE = oInit.levelName;
    with oMenuSel { sprite_index = sMenuSelOff; }
    sprite_index = sMenuSelOn;
}
