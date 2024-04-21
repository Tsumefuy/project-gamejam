state();

/*if (direct == 359) {
	direct = -1;
}*/

#region COLISÃO

if (place_meeting(x+hspd, y, obj_wall)) {
	while(!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x, y+vspd, obj_wall)) {
	while(!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}	
	vspd = 0;
}

#endregion

x += hspd;
y += vspd;
