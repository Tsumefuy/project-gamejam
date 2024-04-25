time_current = current_time-time_init;

if (time_current >= 30000 and instance_exists(obj_player)) {
	room_goto(re_end);
}

if (faded) {
	if (global.player_life != 0) {
		while (global.quant_borrachas < max_quant_borrachas) {
			instance_create_layer(random_range(0, 1156), random_range(-300, -400), "Instances_NPCs", obj_borracha_vermelha);
			global.quant_borrachas++;
		}
	}
}






