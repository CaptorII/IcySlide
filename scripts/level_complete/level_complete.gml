function level_complete(){
	if (global.current_flag_count != global.flag_count) {
		show_debug_message("not enough flags gathered");
	} else {
		show_debug_message("collected all flags");
		show_debug_message("moves: " + string((global.moves_in_level + 1)));
		if (room == LAST_LEVEL) {
			room_goto(0);
		} else {	
			room_goto_next();
		}
	}
}

function flag_pickup(){
	global.current_flag_count++;	
}