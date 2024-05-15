function level_complete() {
	if (global.current_flag_count != global.flag_count) {
		return false;
	} else {
		global.final_score = global.moves_in_level + 1;
		show_debug_message("moves: " + string((global.final_score)));		
		room_goto(ScoreScreen);		
	}
}

function flag_pickup() {
	global.current_flag_count++;	
}