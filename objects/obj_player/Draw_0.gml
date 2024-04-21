if (hspd != 0) {
	if (state == player_states_dash) {
		draw_sprite_ext(spr_player_dash, -1, x, y, 0.25*direct, 0.25, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_player_walk, -1, x, y, 0.25*direct, 0.25, 0, c_white, 1);
	}
} else if (vspd != 0) {
	draw_sprite_ext(spr_player_walk, -1, x, y, 0.25*direct, 0.25, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_player_idle, -1, x, y, 0.25*direct, 0.25, 0, c_white, 1);
}
