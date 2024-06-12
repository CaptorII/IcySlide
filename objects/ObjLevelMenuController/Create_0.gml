star_array = [0][0];
var _button_array;
for (var _i = 0; _i < instance_number(ObjBtnLvlParent); _i++;) {
	_button_array[_i] = instance_find(ObjBtnLvlParent, _i);
}
//array_sort(_button_array, function(_e1, _e2) {
//	return real(_e1.btn_text) - real(_e2.btn_text);
//});
array_sort(_button_array, true);
for (var _i = 0; _i < instance_number(ObjBtnLvlParent); _i++;) {
	var _current_high_score = global.player_scores[_i + 1];
	var _par = global.par_scores[_i + 1];
	var _button = _button_array[_i];
	//show_debug_message(_button.btn_text); // causes error (Variable <unknown_object>.btn_text not set before reading it.)
	if (_current_high_score == DEFAULT_SCORE) {
		star_array[_i][0] = 0;
	} else if (_current_high_score <= _par) {
		star_array[_i][0] = 3;
	} else if (_current_high_score <= (_par * 1.5)) {
		star_array[_i][0] = 2;
	} else { 
		star_array[_i][0] = 1;
	}
	global.player_stars[_i + 1] = star_array[_i][0]; // save number of stars for this level	
	global.player_stars_total += star_array[_i][0]; // add number of stars for this level to the total
	star_array[_i][1] = _button.x; // set co-ords for star sprite for this level
	star_array[_i][2] = _button.y;
}

//detect swipes for scrolling screen
global.swipe_margin = 45;
drag_offset_x = 0;
drag_offset_y = 0;
drag_pos_x = 0;
drag_pos_y = 0;
flick_vel_x = 0.0;
flick_vel_y = 0.0;