if (timer_press_enter >= room_speed/2) {
	timer_press_enter = 0;
	if (view_press_enter) {
		view_press_enter=false;
	} else {
		view_press_enter=true;
	}
}

timer_press_enter++;

if state == 1 && keyboard_check_pressed(vk_enter) {
	//audio_play_sound(snd_enter, 10,false);
	state++;
	index=0;
} else if state == 2 {
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
		//audio_play_sound(snd_menu, 10, false);
		index--;
	} else if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) {
		//audio_play_sound(snd_menu, 10, false);
		index++;
	}
	index = in_range(index, 0, options_length-1);
	
	if keyboard_check_pressed(vk_enter) and index == 0 {
		//audio_play_sound(snd_enter, 10, false);
		//audio_stop_sound(snd_soundtrack);
		room_goto(Context);
	} else if keyboard_check_pressed(vk_enter) and index == 1 {
		index = 0;
		state = 4;
	} else if keyboard_check_pressed(vk_enter) and index == 2 {
		//audio_play_sound(snd_enter, 10, false);
		state = 3;
	} else if keyboard_check_pressed(vk_enter) and index == 3 {
		//audio_play_sound(snd_enter, 10, false);
		game_end();
	}
} else if state == 3 {
	if keyboard_check_pressed(vk_escape)
	{
		//audio_play_sound(snd_esc, 10, false);
		state--;
	}
} else if state == 4 {
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
		//audio_play_sound(snd_menu, 10, false);
		index--;
	} else if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) {
		//audio_play_sound(snd_menu, 10, false);
		index++;
	}
	
	if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")) {
		audio_play_sound(snd_menu, 10, false);
		global.s_values[index] -= 0.1;
		global.s_values[index] = in_range(global.s_values[index], 0, 1);
		
		audio_sound_gain(music, global.s_values[0], 0);
		audio_sound_gain(snd_esc, global.s_values[1], 0);
		audio_sound_gain(snd_menu, global.s_values[1], 0);
		audio_sound_gain(snd_enter, global.s_values[1], 0);
	} else if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) {
		audio_play_sound(snd_menu, 10, false);

		global.s_values[index] += 0.1;
		global.s_values[index] = in_range(global.s_values[index], 0, 1);
		
		audio_sound_gain(music, global.s_values[0], 0);
		audio_sound_gain(snd_esc, global.s_values[1], 0);
		audio_sound_gain(snd_menu, global.s_values[1], 0);
		audio_sound_gain(snd_enter, global.s_values[1], 0);
	}
	
	index = in_range(index, 0, configs_ops_length-1)
	
	if keyboard_check_pressed(vk_escape)
	{
		//audio_play_sound(snd_esc, 10, false);
		index=1;
		state=2;
	}
}
