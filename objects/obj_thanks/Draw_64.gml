var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();

draw_set_font(fnt_jogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);
	
draw_text_ext_transformed(_gui_largura/2, _gui_altura/2, "Fim de jogo, parabéns", 250, 1000, 0.2, 0.2, 0);