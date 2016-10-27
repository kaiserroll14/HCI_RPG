///move_state()

get_input();



//get dash key
if (dash && obj_player_stats.stamina >= DASH_COST)
{
    state = dash_state;
    alarm[0] = room_speed/8;
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}


if (att)
{
    image_index = 0;
    state = att_state;
}

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
    get_face();
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

switch(face)
{
    case RIGHT:
        sprite_index = spr_heroright;
        break;
    
    case UP:
        sprite_index = spr_heroup;
        break;
        
    case LEFT:
        sprite_index = spr_heroleft;
        break;
        
    case DOWN:
        sprite_index = spr_herodown;
        break;
}
