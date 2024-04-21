function player_states_free() {
	#region INPUT
	
	var _tecla_para_cima = keyboard_check(ord("W")) or keyboard_check(vk_up); 
	var _tecla_para_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);
	var _tecla_para_esq = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var _tecla_para_dir = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var _tecla_space = keyboard_check_pressed(vk_space);
	var _tecla_atack = keyboard_check_pressed(ord("C"));
	
	#endregion
	
	var _teclas = _tecla_para_dir - _tecla_para_esq != 0 or _tecla_para_baixo - _tecla_para_cima != 0;

	dir = point_direction(0,0, _tecla_para_dir - _tecla_para_esq, _tecla_para_baixo - _tecla_para_cima);

	hspd = lengthdir_x(spd * _teclas, dir);
	vspd = lengthdir_y(spd * _teclas, dir);
	if (hspd > 0) {
		obj_player.direct = 1;
	} else if (hspd < 0){
		obj_player.direct = -1;
	}
	
	if (_tecla_atack) {
		image_index = 0;
		hspd = 0;
		vspd = 0;
		if (combo < lenght_atacks and current_time-last_atack<=inter_atack) {
			combo++;
		} else {
			combo = 1;
		}
		state = player_states_atack;
	}
	
	if (_tecla_space) {
		hspd = 0;
		vspd = 0;
		state = player_states_dash;
	}
	
}

function player_states_dash() {
	if (distance < 20) {
		hspd = spd * 2 * obj_player.direct;
		distance++;
	} else {
		distance = 0;
		state=player_states_free;
	}
}

function player_states_atack() {
	if (not atacked) {
		instance = collision_circle(x+(50*direct), y, 20, obj_enemy_basic, false, false);
		if (instance != noone) {
			atacked = true;
			instance.hited = true;
			instance.life -= combo;
		}
	}
}

