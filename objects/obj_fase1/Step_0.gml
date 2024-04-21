if (current_time-time_init >= 30000) {
	room_goto(re_end);
}
if (global.index_borracha <= number_max_borracha) {
	instance_create_layer(random_range(0, 1526)+50, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
	global.index_borracha++;
}