for (var _level = 1; _level < instance_number(ObjBtnLvlParent); _level++;) {
	var _current_high_score = global.player_scores[_level];
	var _par = global.par_scores[_level];
	var _button = instance_find(ObjBtnLvlParent, _level);
	var _star_no = 0;
	if (_current_high_score == 999) {
		_star_no = 0;
	} else if (_current_high_score <= _par) {
		_star_no = 3;
	} else if (_current_high_score <= (_par * 1.5)) {
		_star_no = 2;
	} else { 
		_star_no = 1;
	}
	draw_sprite(SprStars, _star_no, _button.x, _button.y); // not working
}