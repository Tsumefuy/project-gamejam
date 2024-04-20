width = 1280;
height = 720;
resolution_scale = 0.8;
global.view_width = width / resolution_scale;
global.view_height = height / resolution_scale;
target = obj_player;
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale);
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale);