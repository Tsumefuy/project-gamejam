camera_set_view_size(view_camera[0], global.view_width, global.view_height);

var _x1;
var _y1;

if (instance_exists(target)) {
	_x1 = target.x - global.view_width / 2;
	_y1 = target.y - global.view_height / 2;
	
	_x1 = clamp(_x1, 0, room_width - global.view_width); 
	_y1 = clamp(_y1, 0, room_height - global.view_height); 
	
	camera_set_view_pos(view_camera[0], _x1, _y1);

}

show_debug_message(_x1);