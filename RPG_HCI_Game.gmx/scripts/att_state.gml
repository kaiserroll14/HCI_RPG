///att_state

image_speed = .5;
switch (sprite_index) {
    case spr_herodown: 
        sprite_index = spr_hero_attdown;
        break;
    
    case spr_heroup: 
        sprite_index = spr_hero_attup;
        break;
    
    case spr_heroleft: 
        sprite_index = spr_hero_attleft;
        break;
    
    case spr_heroright: 
        sprite_index = spr_hero_attright;
        break;
}

if(image_index >= 3 && attacked == false)
{
    var xx = 0;
    var yy = 0;
    // move hit box
    switch (sprite_index) 
    {
        case spr_hero_attdown: 
            xx = x;
            yy = y+12;
            break;
        
        case spr_hero_attup: 
            xx = x;
            yy = y-10;
            break;
            
        case spr_hero_attleft: 
            xx = x+10;
            yy = y+2;
            break;
            
        case spr_hero_attright: 
            xx = x-10;
            yy = y+2;
            break;
    }
    
    
    
    //create damage obj
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    attacked = true;
}


