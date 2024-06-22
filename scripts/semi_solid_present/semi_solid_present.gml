function semi_solid_present(_destination_x, _destination_y) {
	if (position_meeting(_destination_x, _destination_y, global.semi_solids)) {
		show_debug_message("clear");
		return true;
	}
	show_debug_message("not clear");
	return false;
}