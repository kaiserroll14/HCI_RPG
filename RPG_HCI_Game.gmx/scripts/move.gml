///move(collision_obj)

var collision_obj = argument0;

//Collision in X direction
if(place_meeting(x+hsp, y, collision_obj)) //if you hit obj
{
    while(!place_meeting(x+hsp, y, collision_obj)) //while still not hitting obj keep moving
    {
        x += sign(hsp);
    }
    hsp = 0; //stop moving in this direction
}
x += hsp; //if none of above keep moving in X direction

//Collision in Y direction
if(place_meeting(x, y+vsp, collision_obj)) // if you hit obj
{
    while(!place_meeting(x, y+vsp, collision_obj)) //while still not hitting obj keep moving
    {
        y += sign(vsp);
    }
    vsp = 0; //stop moving in this direction
}
y += vsp; //if none of above keep moving in Y direction
