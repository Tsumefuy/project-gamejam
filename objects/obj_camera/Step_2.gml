camera_set_view_size(view_camera[0], global.view_width, global.view_height);

var _x1;
var _y1;
var _c_x;
var _c_y;

if (instance_exists(target)) {
	_x1 = target.x - global.view_width / 2;
	_y1 = target.y - global.view_height / 2;
	
	_x1 = clamp(_x1, 0, room_width - global.view_width); 
	_y1 = clamp(_y1, 0, room_height - global.view_height); 
	
	_c_x = camera_get_view_x(view_camera[0]);
	_c_y = camera_get_view_y(view_camera[0]);
	
	camera_set_view_pos(view_camera[0], lerp(_c_x, _x1, view_spd), lerp(_c_y, _y1, view_spd));

}