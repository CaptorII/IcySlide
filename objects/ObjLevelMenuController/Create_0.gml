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
	if (_current_high_score == 999) {
		star_array[_i][0] = 0;
	} else if (_current_high_score <= _par) {
		star_array[_i][0] = 3;
	} else if (_current_high_score <= (_par * 1.5)) {
		star_array[_i][0] = 2;
	} else { 
		star_array[_i][0] = 1;
	}
	star_array[_i][1] = _button.x;
	star_array[_i][2] = _button.y;
}