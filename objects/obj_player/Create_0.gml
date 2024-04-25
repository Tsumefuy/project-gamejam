vspd = 0; //velocidade vertical
hspd = 0; //velocidade horizontal
spd = 8.0; //velocidade geral
dir = 0; //direção
acc=0;
global.player_life=7;
death = false;

dash_dir = 0;
dash_force = 15.00;
direct = 1;
distance = 0;

state = player_states_free;
_teclas = 0;

attacks = [spr_player_atack1, spr_player_atack2, spr_player_atack3];
lenght_atacks = array_length(attacks);
combo = 0;

image_speed = 1;
image_yscale = 0.25;
image_xscale = 0.25;

equiped = false;

last_atack = current_time;
inter_atack = 500;

alpha = 0;

atacked = false;