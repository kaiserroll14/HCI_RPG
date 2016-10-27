///enemy_choose_next_state()
if(alarm[0] <= 0)
{
    state = choose(enemy_idel_state, enemy_wander_state);
    alarm[0] = room_speed*irandom_range(2, 4);
    targetx = random(room_width);
    targety = random(room_height);
}
