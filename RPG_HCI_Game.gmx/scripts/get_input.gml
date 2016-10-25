///get_input()

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

//Get Axis
xaxis = (right - left);
yaxis = (down - up);

//Check for gamepad input(xbone controller)
if(gamepad_is_connected(0))
{
    gamepad_set_axis_deadzone(0, .35);
    xaxis = (gamepad_axis_value(0, gp_axislh) >=.5);
    yaxis = (gamepad_axis_value(0, gp_axislv) >=.5);
}
