function in_range(_var, _min, _max) {
	if _var > _max {
		return _min
	} else if _var <_min {
		return _max
	}
	return _var
}

function draw_text_with_shadow(_text, _x, _y, _opacity, _distance, _scale, _color) {
	draw_set_color(c_black);
	draw_set_alpha(_opacity);
	draw_text_transformed(_x+_distance, _y+_distance, _text, _scale, _scale, 0)
	
	draw_set_color(_color);
	draw_set_alpha(1);
	draw_text_transformed(_x, _y, _text, _scale, _scale, 0)
}

press_enter = "Pressione ENTER para iniciar";
view_press_enter = false;
timer_press_enter = 0;
options = ["Jogar", "Opções", "Créditos", "Sair"];
options_length = array_length(options);
configs_ops = ["Música", "Sons"];
global.s_values = [1, 1];
configs_ops_length = array_length(configs_ops);
team = ["Acauã Rangel Brazil", "André Luiz Rangel", "Gustavo Maia", "Vitório Henrique"];
team_length = array_length(team);
state = 1.0;
index = 0;
esc_button = 0;
select = true;
alpha = 1.0;
music = audio_play_sound(snd_soundtrack, 10, true);
audio_sound_gain(music, global.s_values[0], 0);
