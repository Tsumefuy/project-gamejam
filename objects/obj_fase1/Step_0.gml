if (current_time-time_init >= 30000) {
	room_goto(re_end);
}
if (global.index_borracha <= number_max_borracha) {
	switch (global.index_borracha) {
		
		case 0:
			pos = 0;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 1:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 2:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 3:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 4:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 5:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 6:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		case 7:
			pos += 224;
			instance_create_layer(pos, random_range(-224, -400), "Instances_NPCs", obj_borracha_vermelha);
		break;
		
	}
	global.index_borracha++;
}