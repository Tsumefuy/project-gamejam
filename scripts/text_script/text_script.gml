function fade_in_text(_text, _x, _y, _color, _sep, _length, _scale, _vel) {
	if (alpha < 1) {
		alpha += _vel;
	}
	
	draw_set_alpha(alpha);
	draw_set_color(_color);
	draw_text_ext_transformed(_x, _y, _text, _sep, _length, _scale, _scale, 0);
	if (alpha >= 1) {
		alpha = 1;
		return true;
	} else {
		return false;
	}
}

function fade_out_text(_text, _x, _y, _color, _sep, _length, _scale, _vel) {
	if (alpha > 0) {
		alpha -= _vel;
	}
	
	draw_set_alpha(alpha);
	draw_set_color(_color);
	draw_text_ext_transformed(_x, _y, _text, _sep, _length, _scale, _scale, 0);
	if (alpha <= 0) {
		alpha = 0;
		return false;
	} else {
		return true;
	}
}