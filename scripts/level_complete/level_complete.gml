function level_complete() {
	if (global.current_flag_count != global.flag_count) {
		return false;
	} else {
		// get final score for level
		global.final_score = global.moves_in_level + 1;
		show_debug_message("moves: " + string((global.final_score)));
		// save score if new best
		player_scores = array_create(11, 999);
		var _level = real(string_copy(room_get_name(room), 6, 3));
		var _current_high_score = player_scores[_level - 1];
		if (global.final_score <= _current_high_score) {
			player_scores[_level - 1] = global.final_score;
		}
		show_debug_message("high score: " + string(player_scores[_level - 1]));
		room_goto(ScoreScreen);
	}
}

function flag_pickup() {
	global.current_flag_count++;	
}