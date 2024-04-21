vspd = 0; //velocidade vertical
hspd = 0; //velocidade horizontal
spd = 8.0; //velocidade geral
dir = 0; //direção
acc=0;
life=7;

dash_dir = 0;
dash_force = 15.00;
direct = 1;
distance = 0;

state = player_states_free;

attacks = [spr_player_atack1, spr_player_atack2, spr_player_atack3];
lenght_atacks = array_length(attacks);
combo = 0;

image_speed = 1.5;
image_yscale = 0.25;
image_xscale = 0.25;

last_atack = current_time;
inter_atack = 500;