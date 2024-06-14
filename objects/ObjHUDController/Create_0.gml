move_string = "0";
flag_string = "0/0";
var _level = real(string_copy(room_get_name(room), 6, 3));

if (_level < 10) {
	level_name = string_copy(room_get_name(room), 8, 1);
} else if (_level < 100) {
	level_name = string_copy(room_get_name(room), 7, 2);
} else {
	level_name = string_copy(room_get_name(room), 6, 3);
}

if ((global.par_scores[_level] * 4) < 99) {
	global.stamina = global.par_scores[_level] * 4;
} else {
	global.stamina = 100;
}

stamina_step = 0;