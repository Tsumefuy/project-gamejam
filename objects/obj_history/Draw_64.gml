var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();

draw_set_font(fnt_jogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (trasition)
{
	draw_set_alpha(alpha);
}

animate_text(text[slice], indice, _gui_largura/2, _gui_altura/2, c_white, _gui_largura*2, 0.2);

indice = slice_velocity(indice, vel, length);

if indice >= length {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_text_transformed(_gui_largura-20, _gui_altura-20, "ENTER", 0.15, 0.15, 0);
} else {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_text_transformed(_gui_largura-20, _gui_altura-20, "ENTER para pular", 0.15, 0.15, 0);
}

