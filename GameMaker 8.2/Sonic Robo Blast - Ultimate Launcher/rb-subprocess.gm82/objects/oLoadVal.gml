#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.myFont = font_add_sprite(sFont, ord(' '), false, 0);
global.myFontSmall = font_add_sprite(sFontSmall, ord(' '), false, 0);
global.fullscreen = true;
global.graphicsHigh = true;
global.downToRun = true;
if (joystick_exists(1)) global.gamepadOn = false;
else global.gamepadOn = false;
global.screenScale = 3;

global.keyUpVal = vk_up;
global.keyDownVal = vk_down;
global.keyLeftVal = vk_left;
global.keyRightVal = vk_right;
global.keyJumpVal = ord('Z');
global.keyAttackVal = ord('X');
global.keyItemVal = ord('C');
global.keyRunVal = vk_shift;
global.keyBombVal = ord('B');
global.keyRopeVal = ord('R');

room_goto_next();
