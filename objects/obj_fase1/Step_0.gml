var _pos_x = random_range(0, 1526);

if (global.index_borracha <= number_max_borracha) {
	instance_create_layer(_pos_x, -233, "Instances_NPCs", obj_borracha_vermelha);
	global.index_borracha++;
}
