y += vspd;

if (y >= room_height) {
	instance_destroy();
	global.quant_borrachas--;
}

if (global.quant_borrachas > 8) global.quant_borrachas = 8;	