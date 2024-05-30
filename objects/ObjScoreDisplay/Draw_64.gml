//get variables
var _level = real(string_copy(room_get_name(global.previous_level), 6, 3));
var _current_high_score = global.player_scores[_level];
var _par = global.par_scores[_level];
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//add text
draw_text(RESOLUTION_W / 2, 50, string(room_get_name(global.previous_level)));
draw_text(RESOLUTION_W / 2, 150, "Moves: " + string(global.final_score));
draw_text(RESOLUTION_W / 2, 200, "High score: " + string(_current_high_score));
draw_text(RESOLUTION_W / 2, 250, "Par: " + string(_par));
//set which star image to display depending on best score
draw_self();
image_speed = 0;
if (global.final_score <= _par) {
	image_index = 3;
} else if (global.final_score <= (_par * 1.5)) {
	image_index = 2;
} else { 
	image_index = 1;
}