move_string = "0";
flag_string = "0/0";

if (real(string_copy(room_get_name(room), 6, 3)) < 10) {
	level_name = string_copy(room_get_name(room), 8, 1);
} else if (real(string_copy(room_get_name(room), 6, 3)) < 100) {
	level_name = string_copy(room_get_name(room), 7, 2);
} else {
	level_name = string_copy(room_get_name(room), 6, 3);
}

global.stamina = 100;