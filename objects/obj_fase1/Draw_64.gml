var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();

draw_set_font(fnt_jogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

fade_in_text(text, _gui_largura/2, _gui_altura/2, c_black, 250, _gui_largura*3, 0.2, vel);
