function player_states_free(){
	var tecla_cima = keyboard_check(ord("W"));
	var tecla_baixo = keyboard_check(ord("S"));
	var tecla_esquerda = keyboard_check(ord("A"));
	var tecla_direita = keyboard_check(ord("D"));
	
	var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0;

    dir = point_direction(0,0,tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

    velv = lengthdir_y(veloc * tecla,dir);
    velh = lengthdir_x(veloc * tecla,dir);
  
    if (mouse_check_button(mb_right)){
		state = player_states_dash;
	}

  x+=velh;
  y+=velv;

}

function player_states_dash(){

}