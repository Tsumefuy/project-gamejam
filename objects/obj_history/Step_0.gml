if keyboard_check(vk_shift) and keyboard_check_pressed(vk_enter) {
	audio_play_sound(snd_enter, global.s_values[1]*10, false)
	trasition=true;
	audio_stop_sound(snd_soundtrack);
}else if keyboard_check_pressed(vk_enter) and indice < length{
	indice = length;
	audio_play_sound(snd_enter, global.s_values[1]*10, false)
} else if keyboard_check_pressed(vk_enter) and slice == list_length -1 {
	audio_play_sound(snd_enter, global.s_values[1]*10, false)
	trasition=true;
	audio_stop_sound(snd_soundtrack);
} else if keyboard_check_pressed(vk_enter) {
	indice = 1;
	if (slice <= list_length - 1) slice++;
	length = string_length(text[slice]) - 1;
	audio_play_sound(snd_enter, global.s_values[1]*10, false)
}

if (trasition)
{
	if (alpha <= -2)
	{
		draw_set_alpha(1);
		room_goto(Room3);
	}
	else alpha -= 0.01;
}
