if (life == 0) {
	mask_index = spr_empty;
	if (tic <= 3) {
		if (not up) {
			alpha = 0.5;
			alpha2 = 0.5;
			if (not triger_tic) {
				alarm[1] = room_speed*0.2;
				triger_tic = true;
			}
		} else {
			alpha = 1;
			alpha2 = 1;
			if (not triger_tic) {
				alarm[1] = room_speed*0.2;
				triger_tic = true;
				tic++;
			}
		}
		
	} else {
		instance_destroy();
	}
}