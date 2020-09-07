/// @description Move Camera

// a lotta math that basically drags the camera towards the player if it exists
if(instance_exists(obj_player) && _gamestate = gstate.go) {
	var _x = clamp(obj_player.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(obj_player.y - view_height / 2, 0, room_height - view_height);
	
	var _cam_x = camera_get_view_x(view);
	var _cam_y = camera_get_view_y(view);
	var _spd = .4;
	
	camera_set_view_pos(view, lerp(_cam_x, _x, _spd), lerp(_cam_y, _y, _spd));
}