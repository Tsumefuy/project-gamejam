time_current = current_time-time_init;

if (time_current >= 30000) {
	room_goto(re_end);
}

for (var i = 0; i <= 7; i++) {
	if (!instance_exists(obj_borracha_vermelha)) {
		instance_create_layer(random_range(0, room_width-sprite_width/2), random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
	}
}



