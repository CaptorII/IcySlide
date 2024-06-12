event_inherited();

if (global.player_scores[1] != 999) {
	for (var _i = 1; _i < array_length(global.player_scores) - 1; _i++) {
		if (global.player_scores[_i] == 999) {
			var _level_name = "Level";
			if (_i > 99) {
				_level_name = "Level" + string(_i);
			} else if (_i > 9) {
				_level_name = "Level0" + string(_i);
			} else {
				_level_name = "Level00" + string(_i);
			}
			show_debug_message(_level_name);
			room_goto(asset_get_index(_level_name));
			break;
		}
	}
} else {
	room_goto(Level555);
}