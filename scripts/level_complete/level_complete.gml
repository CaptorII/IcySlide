function level_complete() {
	if (global.current_flag_count != global.flag_count) {
		return false;
	} else {
		// get final score for level
		global.final_score = global.moves_in_level + 1;
		show_debug_message("moves: " + string((global.final_score)));
		// save score if new best
		var _level = real(string_copy(room_get_name(room), 6, 3));		
		if (global.player_scores[_level] >= global.final_score) {
			global.player_scores[_level] = global.final_score;
		}
		room_goto(ScoreScreen);
	}
}

function flag_pickup() {
	global.current_flag_count++;	
}