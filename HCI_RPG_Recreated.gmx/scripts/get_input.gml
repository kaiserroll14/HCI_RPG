///get_input()

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
dash = keyboard_check_pressed(vk_space);
att = keyboard_check_pressed(ord("X"));

//Get Axis
xaxis = (right - left);
yaxis = (down - up);

//Check for gamepad input(xbone controller)
if(gamepad_is_connected(0))
{
    gamepad_set_axis_deadzone(0, .35);
    xaxis = (gamepad_axis_value(0, gp_axislh) >=.5);
    yaxis = (gamepad_axis_value(0, gp_axislv) >=.5);
    dash = gamepad_button_check_pressed(0, gp_face1);
    att = gamepad_button_check_pressed(0, gp_face3);
}
