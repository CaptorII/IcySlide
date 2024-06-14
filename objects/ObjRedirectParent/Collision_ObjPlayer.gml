// when player steps on redirection block, change direction based on block direction
if (other.x == x && other.y == y) {
	var _player_move = redirect();

	other.destination[0] = _player_move[0];
	other.destination[1] = _player_move[1];
	other.face = face;
	other.x_speed = _player_move[2];
	other.y_speed = _player_move[3];
	show_debug_message("New dest: (" + string(other.destination[0]) + ", " + string(other.destination[1]) + ")");
	if (object_get_name(object_index) == "ObjRedirectRotate") {		
		if (face == 0) {
			face = 4;
		}
		face -= 1;
		image_index -= 1;
	}
}