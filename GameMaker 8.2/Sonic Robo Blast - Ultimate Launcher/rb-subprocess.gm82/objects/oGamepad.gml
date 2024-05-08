#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
start = false;
startPressed = false;
startReleased = false;

left = false;
leftPressed = false;
leftReleased = false;

right = false;
rightPressed = false;
rightReleased = false;

up = false;
upPressed = false;
upReleased = false;

down = false;
downPressed = false;
downReleased = false;

jump = false;
jumpPressed = false;
jumpReleased = false;

attack = false;
attackPressed = false;
attackReleased = false;

item = false;
itemPressed = false;
itemReleased = false;

run = false;

bomb = false;
bombPressed = false;
bombReleased = false;

rope = false;
ropePressed = false;
ropeReleased = false;

flare = false;
flarePressed = false;
flareReleased = false;

pay = false;
payPressed = false;
payReleased = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=408
applies_to=self
invert=0
arg0=global.gamepadOn
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
startReleased = false;
startPressed = false;
if (start)
{
    if (global.joyStartVal > 0)
        start = joystick_check_button(1,global.joyStartVal);
    else if (global.joyStartVal == -1)
    {
        if (joystick_zpos(1) > 0.1) start = true;
        else start = false;
    }
    else if (global.joyStartVal == -2)
    {
        if (joystick_zpos(1) < -0.1) start = true;
        else start = false;
    }

    if (not start) startReleased = true;
}
else
{
    if (global.joyStartVal > 0)
        start = joystick_check_button(1,global.joyStartVal);
    else if (global.joyStartVal == -1)
    {
        if (joystick_zpos(1) > 0.1) start = true;
        else start = false;
    }
    else if (global.joyStartVal == -2)
    {
        if (joystick_zpos(1) < -0.1) start = true;
        else start = false;
    }

    if (start) startPressed = true;
}

/////////////
// LEFT
/////////////

leftReleased = false;
leftPressed = false;
if (left)
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 270) or joystick_direction(1) == 100) left = true;
    else left = false;
    if (not left) leftReleased = true;
}
else
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 270) or joystick_direction(1) == 100) left = true;
    else left = false;
    if (left) leftPressed = true;
}

/////////////
// RIGHT
/////////////

rightReleased = false;
rightPressed = false;
if (right)
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 90) or joystick_direction(1) == 102) right = true;
    else right = false;
    if (not right) rightReleased = true;
}
else
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 90) or joystick_direction(1) == 102) right = true;
    else right = false;
    if (right) rightPressed = true;
}

/////////////
// UP
/////////////

upReleased = false;
upPressed = false;
if (up)
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 0) or joystick_direction(1) == 104) up = true;
    else up = false;
    if (not up) upReleased = true;
}
else
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 0) or joystick_direction(1) == 104) up = true;
    else up = false;
    if (up) upPressed = true;
}

/////////////
// DOWN
/////////////

downReleased = false;
downPressed = false;
if (down)
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 180) or joystick_direction(1) == 98) down = true;
    else down = false;
    if (not down) downReleased = true;
}
else
{
    if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 180) or joystick_direction(1) == 98) down = true;
    else down = false;
    if (down) downPressed = true;
}

/////////////
// DIAGONAL
/////////////

if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 45) or joystick_direction(1) == 105)
{
    right = true;
    up = true;
}

if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 135) or joystick_direction(1) == 99)
{
    right = true;
    down = true;
}

if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 225) or joystick_direction(1) == 97)
{
    left = true;
    down = true;
}

if ((joystick_has_pov(1) == 1 and joystick_pov(1) == 315) or joystick_direction(1) == 103)
{
    left = true;
    up = true;
}

/////////////
// JUMP
/////////////

jumpReleased = false;
jumpPressed = false;
if (jump)
{
    if (global.joyJumpVal > 0)
        jump = joystick_check_button(1,global.joyJumpVal);
    else if (global.joyJumpVal == -1)
    {
        if (joystick_zpos(1) > 0.1) jump = true;
        else jump = false;
    }
    else if (global.joyJumpVal == -2)
    {
        if (joystick_zpos(1) < -0.1) jump = true;
        else jump = false;
    }

    if (not jump) jumpReleased = true;
}
else
{
    if (global.joyJumpVal > 0)
        jump = joystick_check_button(1,global.joyJumpVal);
    else if (global.joyJumpVal == -1)
    {
        if (joystick_zpos(1) > 0.1) jump = true;
        else jump = false;
    }
    else if (global.joyJumpVal == -2)
    {
        if (joystick_zpos(1) < -0.1) jump = true;
        else jump = false;
    }

    if (jump) jumpPressed = true;
}

/////////////
// ATTACK
/////////////

attackReleased = false;
attackPressed = false;
if (attack)
{
    if (global.joyAttackVal > 0)
        attack = joystick_check_button(1,global.joyAttackVal);
    else if (global.joyAttackVal == -1)
    {
        if (joystick_zpos(1) > 0.1) attack = true;
        else attack = false;
    }
    else if (global.joyAttackVal == -2)
    {
        if (joystick_zpos(1) < -0.1) attack = true;
        else attack = false;
    }

    if (not attack) attackReleased = true;
}
else
{
    if (global.joyAttackVal > 0)
        attack = joystick_check_button(1,global.joyAttackVal);
    else if (global.joyAttackVal == -1)
    {
        if (joystick_zpos(1) > 0.1) attack = true;
        else attack = false;
    }
    else if (global.joyAttackVal == -2)
    {
        if (joystick_zpos(1) < -0.1) attack = true;
        else attack = false;
    }

    if (attack) attackPressed = true;
}

////////////
// ITEM
////////////

itemReleased = false;
itemPressed = false;
if (item)
{
    if (global.joyItemVal > 0)
        item = joystick_check_button(1,global.joyItemVal);
    else if (global.joyItemVal == -1)
    {
        if (joystick_zpos(1) > 0.1) item = true;
        else item = false;
    }
    else if (global.joyItemVal == -2)
    {
        if (joystick_zpos(1) < -0.1) item = true;
        else item = false;
    }

    if (not item) itemReleased = true;
}
else
{
    if (global.joyItemVal > 0)
        item = joystick_check_button(1,global.joyItemVal);
    else if (global.joyItemVal == -1)
    {
        if (joystick_zpos(1) > 0.1) item = true;
        else item = false;
    }
    else if (global.joyItemVal == -2)
    {
        if (joystick_zpos(1) < -0.1) item = true;
        else item = false;
    }

    if (item) itemPressed = true;
}

////////////
// RUN
////////////

if (global.joyRunVal > 0)
    run = joystick_check_button(1,global.joyRunVal);
else if (global.joyRunVal == -1)
{
    if (joystick_zpos(1) > 0.1) run = true;
    else run = false;
}
else if (global.joyRunVal == -2)
{
    if (joystick_zpos(1) < -0.1) run = true;
    else run = false;
}

////////////
// BOMB
////////////

bombReleased = false;
bombPressed = false;
if (bomb)
{
    if (global.joyBombVal > 0)
        bomb = joystick_check_button(1,global.joyBombVal);
    else if (global.joyBombVal == -1)
    {
        if (joystick_zpos(1) > 0.1) bomb = true;
        else bomb = false;
    }
    else if (global.joyBombVal == -2)
    {
        if (joystick_zpos(1) < -0.1) bomb = true;
        else bomb = false;
    }

    if (not bomb) bombReleased = true;
}
else
{
    if (global.joyBombVal > 0)
        bomb = joystick_check_button(1,global.joyBombVal);
    else if (global.joyBombVal == -1)
    {
        if (joystick_zpos(1) > 0.1) bomb = true;
        else bomb = false;
    }
    else if (global.joyBombVal == -2)
    {
        if (joystick_zpos(1) < -0.1) bomb = true;
        else bomb = false;
    }

    if (bomb) bombPressed = true;
}

////////////
// ROPE
////////////

ropeReleased = false;
ropePressed = false;
if (rope)
{
    if (global.joyRopeVal > 0)
        rope = joystick_check_button(1,global.joyRopeVal);
    else if (global.joyRopeVal == -1)
    {
        if (joystick_zpos(1) > 0.1) rope = true;
        else rope = false;
    }
    else if (global.joyRopeVal == -2)
    {
        if (joystick_zpos(1) < -0.1) rope = true;
        else rope = false;
    }

    if (not rope) ropeReleased = true;
}
else
{
    if (global.joyRopeVal > 0)
        rope = joystick_check_button(1,global.joyRopeVal);
    else if (global.joyRopeVal == -1)
    {
        if (joystick_zpos(1) > 0.1) rope = true;
        else rope = false;
    }
    else if (global.joyRopeVal == -2)
    {
        if (joystick_zpos(1) < -0.1) rope = true;
        else rope = false;
    }

    if (rope) ropePressed = true;
}

////////////
// FLARE
////////////

flareReleased = false;
flarePressed = false;
if (flare)
{
    if (global.joyFlareVal > 0)
        flare = joystick_check_button(1,global.joyFlareVal);
    else if (global.joyFlareVal == -1)
    {
        if (joystick_zpos(1) > 0.1) flare = true;
        else flare = false;
    }
    else if (global.joyFlareVal == -2)
    {
        if (joystick_zpos(1) < -0.1) flare = true;
        else flare = false;
    }

    if (not flare) flareReleased = true;
}
else
{
    if (global.joyFlareVal > 0)
        flare = joystick_check_button(1,global.joyFlareVal);
    else if (global.joyFlareVal == -1)
    {
        if (joystick_zpos(1) > 0.1) flare = true;
        else flare = false;
    }
    else if (global.joyFlareVal == -2)
    {
        if (joystick_zpos(1) < -0.1) flare = true;
        else flare = false;
    }

    if (flare) flarePressed = true;
}

////////////
// PAY
////////////

payReleased = false;
payPressed = false;
if (pay)
{
    if (global.joyPayVal > 0)
        pay = joystick_check_button(1,global.joyPayVal);
    else if (global.joyPayVal == -1)
    {
        if (joystick_zpos(1) > 0.1) pay = true;
        else pay = false;
    }
    else if (global.joyPayVal == -2)
    {
        if (joystick_zpos(1) < -0.1) pay = true;
        else pay = false;
    }

    if (not pay) payReleased = true;
}
else
{
   if (global.joyPayVal > 0)
        pay = joystick_check_button(1,global.joyPayVal);
    else if (global.joyPayVal == -1)
    {
        if (joystick_zpos(1) > 0.1) pay = true;
        else pay = false;
    }
    else if (global.joyPayVal == -2)
    {
        if (joystick_zpos(1) < -0.1) pay = true;
        else pay = false;
    }

    if (pay) payPressed = true;
}
