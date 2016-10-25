///move_state()

get_input();

//Get Direction
dir = point_direction(0,0, xaxis, yaxis);

//Get length
if(xaxis == 0 && yaxis == 0)
{
    len = 0;
}

else
{
    len = spd;
}

//Get Speed
hsp = lengthdir_x(len, dir);
vsp = lengthdir_y(len, dir);

//Move
phy_position_x += hsp;
phy_position_y += vsp;

//Control the sprite
image_speed = sign(len)*.2;
if(len == 0) image_index = spr_herodown;

//verticle sprite
if (vsp > 0)
{
    sprite_index = spr_herodown;
}
else if (vsp < 0)
{
    sprite_index = spr_heroup;
}

//horizontal sprite
if(hsp > 0)
{
    sprite_index = spr_heroright;
}

else if(hsp < 0)
{
    sprite_index = spr_heroleft;
}
