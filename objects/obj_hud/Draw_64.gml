var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();

draw_set_font(fnt_jogo);

var _combo = 0;

with (obj_player) other._combo = combo;

draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text_ext_transformed(_gui_largura-15, 15, "Combo: "+string(_combo), 250, _gui_largura, 0.2, 0.2, 0);

if (instance_exists(obj_player)) {
	draw_sprite_ext(spr_life, global.player_life, 139.5, 51, 0.3, 0.3, 0, c_white, 1);
	
} else {
	draw_sprite_ext(spr_life, 0, 139.5, 51, 0.3, 0.3, 0, c_white, 1);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if (faded == false) {
	faded_b = fade_in_text("Você foi apagado", _gui_largura/2, _gui_altura/2, c_red, 250, _gui_largura*3, 0.2, vel);
	if (faded_b and stop) {
		alarm[0] = room_speed*1;
		stop = false;
	}
		
	} else {
		fade_out_text("Você foi apagado", _gui_largura/2, _gui_altura/2, c_red, 250, _gui_largura*3, 0.2, 0.1);
		if (alpha == 0) {
			room_restart();
		}
	}
}


