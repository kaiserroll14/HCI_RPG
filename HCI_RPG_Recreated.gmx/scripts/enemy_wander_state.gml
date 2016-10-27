///enemy_wander_state()
check_for_player();
var dir = point_direction(x, y, targetx, targety);
var hsp = lengthdir_x(spd, dir);
var vsp = lengthdir_y(spd, dir);
image_xscale = sign(hsp);
phy_position_x += hsp;
phy_position_y += vsp;
