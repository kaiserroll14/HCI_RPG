///move_state()

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if(right)
{
    hsp = spd;
    hsp_dir = 1;
}

if(left)
{
    hsp = -spd;
    hsp_dir = -1;
}

if(right || left)
{
    hsp += (right - left)*acc;
    hsp_dir = right - left;
    
    if(hsp > spd) hsp = spd;
    if(hsp < -spd) hsp = -spd;
}

if(hsp != 0)
{
    image_xscale = sign(hsp);
}

if(up)
{
    vsp = -spd;
}

if(down)
{
    vsp = spd;
}

//Friction and Movement control
if( !left && !right)
{
    hsp = 0;
}

if(!up && !down)
{
    vsp = 0;
}

move(obj_water)
