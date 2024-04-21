state();

#region COLISÃO

if (place_meeting(x+hspd, y, obj_wall)) {
	while(!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x, y+vspd, obj_wall)) {
	while(!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}	
	vspd = 0;
}

#endregion

x += hspd;
y += vspd;

	if (life > 0) {
	switch (state) {
		case player_states_free:
			image_speed = 1.5;
			if (hspd == 0 and vspd == 0) {
				if (equiped) {
					sprite_index = spr_player_idle_lapis;
				} else {
					sprite_index = spr_player_idle;
				}
			} else if (hspd != 0 or vspd != 0) {
				if (hspd > 0) image_xscale = 0.25;
				else if (hspd < 0) image_xscale = -0.25;
				if (equiped) {
					sprite_index = spr_player_walk_lapis; 
				} else {
					sprite_index = spr_player_walk;
				}
			}
		break;
		case player_states_dash:
			sprite_index = spr_player_dash;
		break;
		case player_states_atack:
			var _img_number = 5;
			image_speed = 1.2;
			sprite_index = attacks[combo-1];
			if (combo-1 == 0 or combo-1 == 2) _img_number = 7.5; 
			if (image_index >= _img_number) {
				state = player_states_free;
				atacked = false;
				last_atack=current_time;
			}
		break;
	}
} else {
	if (equiped) {
		sprite_index = spr_player_death_lapis;
	} else {
		sprite_index = spr_player_death;
	}
	show_debug_message(image_index);
	if (image_index >= 16.5) {
		room_goto(menu);
	}
}
