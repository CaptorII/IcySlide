function level_complete(){
	show_debug_message("moves: " + string((global.moves_in_level + 1)));
	if (room == LAST_LEVEL) {
		room_goto(0);
	} else {	
		room_goto_next();
	}
}