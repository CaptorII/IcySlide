function save() {
	var _save_data = array_create(3);
	
	// add array into _save_data:
	_save_data[0] = global.player_scores;
	_save_data[1] = global.par_scores;
	_save_data[2] = VERSION;
	
	var _string = json_stringify(_save_data);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, SAVE_FILE);
	buffer_delete(_buffer);
	
	show_debug_message("Game saved" + _string);
}

function load() {
	if (file_exists(SAVE_FILE)) {
		var _buffer = buffer_load(SAVE_FILE);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		var _save_data = json_parse(_string);
		
		// load array from save, if conditions are met
		if (array_length(_save_data) > 1) {
			if (array_equals(global.par_scores, _save_data[1])) {
				array_copy(global.player_scores, 0, _save_data[0], 0, array_length(_save_data[0]) -1);
			} else { // if par scores have changed, only load scores where par is unchanged
				for (var _i = 0; _i < array_length(_save_data[0]); _i++;) {
					if (global.par_scores[_i] == _save_data[1][_i]) {
						global.player_scores[_i] = _save_data[0][_i];
					}
				}
			}
		}
		show_debug_message("Game loaded" + _string);
	}
}