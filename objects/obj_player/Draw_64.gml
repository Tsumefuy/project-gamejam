var _gui_largura = display_get_gui_width();

draw_sprite_ext(spr_life, life, 139.5, 51, 0.3, 0.3, 0, c_white, 1);

draw_set_font(fnt_jogo);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

draw_set_color(c_black);

draw_set_alpha(1);

draw_text_ext_transformed(_gui_largura-15, 15, "Combo: "+string(combo), 250, _gui_largura, 0.2, 0.2, 0);