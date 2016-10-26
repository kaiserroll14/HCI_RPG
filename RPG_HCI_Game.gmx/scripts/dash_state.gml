///dash_state()
len = spd*4;

//Get Speed
hsp = lengthdir_x(len, dir);
vsp = lengthdir_y(len, dir);

//Move
phy_position_x += hsp;
phy_position_y += vsp;

//Create dash effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
