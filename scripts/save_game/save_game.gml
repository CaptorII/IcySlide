function save() {
	var _save_data = array_create(1);
	
	// add array into _save_data:
	_save_data[0] = global.player_scores;
	
	var _string = json_stringify(_save_data);
	var _buffer = buffer_create(string_byte_length(_string) + 1,buffer_fixed, 1);
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
		
		// load array from save
		global.player_scores = _save_data[0];
		
		show_debug_message("Game loaded" + _string);
	}
}