draw_sprite_ext(spr_life, life, x, y-(sprite_height*1.2), l_scale, l_scale, 0, c_white, alpha2);
draw_sprite_ext(spr_logo, -1, x, y, 0.5, 0.5, 0, c_white, alpha);

if (hited==true) {
	alpha = 0.5;
	if (not triger_hit) {
		alarm[0] = room_speed*0.2;
		triger_hit = true;
	}
} else {
	alpha = 1;
}