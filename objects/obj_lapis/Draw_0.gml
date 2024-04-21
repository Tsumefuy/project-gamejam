draw_set_font(fnt_jogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);

draw_set_alpha(1);

draw_sprite_ext(spr_lapis, 0, x, y, 0.2, 0.2, 0, c_white, 1);

draw_text_ext_transformed(x, y-_y-80, text, 250, 1000, 0.1, 0.1, 0);