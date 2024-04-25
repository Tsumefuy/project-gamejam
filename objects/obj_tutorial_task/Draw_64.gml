if (!instance_exists(obj_enemy_basic)) {
	var _gui_largura = display_get_gui_width();
	var _gui_altura = display_get_gui_height();

	draw_set_font(fnt_jogo);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	if (faded == false) {
		faded_b = fade_in_text(text[slice], _gui_largura/2, _gui_altura/2, c_black, 250, _gui_largura*3, 0.2, vel);
		if (faded_b and stop) {
			alarm[0] = room_speed*0.7;
			stop = false;
		}
		
	} else {
		faded = fade_out_text(text[slice], _gui_largura/2, _gui_altura/2, c_black, 250, _gui_largura*3, 0.2, vel);
		if (faded == false) {
			slice++;
			if (slice == list_length) {
				room_goto(fase1);
			}
		}
	}
}