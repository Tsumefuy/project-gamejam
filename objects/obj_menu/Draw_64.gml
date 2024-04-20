var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();
draw_set_font(fnt_jogo);
draw_set_valign(fa_middle);

if (state == 1 or state == 1.1) {
	draw_set_halign(fa_center);
	
	draw_set_alpha(alpha);
	draw_set_color(c_black);
	
	draw_text_transformed(_gui_largura/2, _gui_altura/2, "DrawEraser", 0.75, 0.75, 0);
	draw_text_transformed(_gui_largura/2, _gui_altura/2+50, "Por equipe Phoenix", 0.2, 0.2, 0);
	
	if (view_press_enter) {
		draw_text_transformed_color(_gui_largura/2, _gui_altura-50, press_enter, 0.2, 0.2, 0, c_red, c_red, c_red, c_red, alpha);
		//draw_text_with_shadow(press_enter, _gui_largura/2, _gui_altura - 50, 0, 5, 0.2, c_red);
	}
} else if (state == 2) {
	draw_set_halign(fa_center);

	for (var _d_index=0; _d_index < options_length; _d_index++) {
		var _compense = 75 * _d_index;
		
		if (_d_index == index) {
			draw_text_with_shadow(">" + options[_d_index] + "<", _gui_largura/2, (_gui_altura - 100)/2 + _compense, 0, 5, 0.3,  c_red);
		} else {
			draw_text_with_shadow(options[_d_index], _gui_largura/2, (_gui_altura - 100)/2 + _compense, 0, 5, 0.2, c_black);
		}
	
	draw_sprite_ext(spr_logo, 0, (_gui_largura/2), _gui_altura - 10, 0.2, 0.2, 0, c_black, 2);
		
	}
} else if (state == 3) {
	draw_set_halign(fa_center);

	draw_text_with_shadow("ESC", 100, 100, 0, 5, 0.2, c_black);
	
	draw_text_with_shadow("Equipe Phoenix", _gui_largura/2, 160, 0, 5, 0.4, c_black);

	for (var _d_index=0; _d_index < team_length; _d_index++) {
		var _compense = 75* _d_index;
		
		draw_text_with_shadow(team[_d_index], _gui_largura/2, _gui_altura/2 + _compense, 0, 5, 0.2, c_black);
	}
} else if (state == 4) {
	draw_set_halign(fa_center);
	draw_text_with_shadow("ESC", 100, 100, 0, 5, 0.2, c_black);
	
	draw_set_halign(fa_left);
	
	for (var _c_index = 0; _c_index < configs_ops_length; _c_index++) {
		var _compense = 70 * _c_index;
		show_debug_message(_c_index);
		
		if (_c_index == index) {
			draw_text_with_shadow(">" + configs_ops[_c_index], _gui_largura*0.25-100, _gui_altura/2 + _compense, 0, 5, 0.25, c_red);
		} else {
			draw_text_with_shadow(configs_ops[_c_index], _gui_largura*0.25, _gui_altura/2 + _compense, 0, 5, 0.2, c_black);
		}
	}
	
	draw_set_halign(fa_right);
	for (var _v_index = 0; _v_index < configs_ops_length; _v_index++) {
		var _compense = 70 * _v_index;
		
		if (_v_index == index) {
			draw_text_with_shadow("-" + string_replace_all(string(global.s_values[_v_index]*100), ".00", "") + "+ <", _gui_largura*0.75+150, _gui_altura/2 + _compense, 0, 5, 0.25, c_red);
		} else {
			draw_text_with_shadow(string_replace_all(string(global.s_values[_v_index]*100), ".00", ""), _gui_largura*0.75, _gui_altura/2 + _compense, 0, 5, 0.2, c_black);
		}
	} 
}
