#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=601
applies_to=self
invert=0
arg0=SS_Init
arg1=0
arg2=0
arg3=0
arg4=0
arg5=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

handle = SS_LoadSound("anime bowling babes.ogg", 1);
SS_LoopSound(handle);
bps = SS_GetSoundBytesPerSecond(handle);
#define Mouse_12
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if mouse_button != mb_right then exit;

switch show_menu("Set Frequency|
-Get Frequency|
Set Panning|
-Get Panning|
Set Volume|
-Get Volume
|-|
Please SHOW INFO!!
|-|
Play Sound|
Loop Sound|
Resume Sound|
Stop Sound|
Pause Sound|
Get Sound Playing State|
Set Sound Position"
  ,-1) begin
  case 0:
    SS_SetSoundFreq(handle, get_integer("Frequency from 1000 to 100 000", SS_GetSoundFreq(handle)));
  break;

  case 1:
    show_message("Frequency: " + string(SS_GetSoundFreq(handle)));
  break;

  case 2:
    SS_SetSoundPan(handle,get_integer("Sound panning from -10 000 to 10 000", SS_GetSoundPan(handle)));
  break;

  case 3:
    show_message("Panning: " + string(SS_GetSoundPan(handle)));
  break;

  case 4:
    SS_SetSoundVol(handle, get_integer("Sound volume from 0 to 10 000", SS_GetSoundVol(handle)));
  break;

  case 5:
    show_message("Volume: "+string(SS_GetSoundVol(handle)));
  break;

  case 6:
    show_info();
  break;

  case 7:
    if SS_IsSoundPlaying(handle) != true then
      SS_PlaySound(handle) else
      show_message("Why start it if it's already playing?");
  break;

  case 8:
  if SS_IsSoundPlaying(handle) != true then
    SS_LoopSound(handle) else
    show_message("Why start it if it's already playing?");
  break;

  case 9:
    if SS_IsSoundPaused(handle) then
      SS_ResumeSound(handle) else
      show_message("Sound isn't paused!");
  break;

  case 10:
    SS_StopSound(handle)
  break;

  case 11:
    if SS_IsSoundPlaying(handle) then
      SS_PauseSound(handle) else
      show_message("Can't pause a sound that isn't playing")
  break;

  case 12:
    if SS_IsSoundPlaying(handle) then
      if SS_IsSoundLooping(handle) then
        show_message("Sound is LOOPING") else
        show_message("Sound is PLAYING") else
      if SS_IsSoundPaused(handle) then
        show_message("Sound is PAUSED") else
        show_message("Sound is STOPPED")
  break;

  case 13:
    if SS_IsSoundPaused(handle) then
    show_message("Can't set the position of a paused sound!") else
    SS_SetSoundPosition(handle, get_integer("Set sound position:", SS_GetSoundPosition(handle)));
  break;
end;
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=601
applies_to=self
invert=0
arg0=SS_Unload
arg1=0
arg2=0
arg3=0
arg4=0
arg5=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

pos = SS_GetSoundPosition(handle);
len = SS_GetSoundLength(handle);

draw_text(20,10,"Sound position/length: "+
string(floor(pos/bps))+
"/"+
string(floor(len/bps))+
"  =  "+
string(pos/len*100)+
"%");
