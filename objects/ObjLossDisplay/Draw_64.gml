//get variables
var _level = real(string_copy(room_get_name(global.previous_level), 6, 3));
var _current_high_score = global.player_scores[_level];
var _par = global.par_scores[_level];
var _stamina = global.stamina;
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//add text
draw_text(RESOLUTION_W / 2, 50, string(room_get_name(global.previous_level)));
draw_text(RESOLUTION_W / 2, 150, "Moves: " + string(_stamina));
draw_set_font(FntTitle);
draw_text(RESOLUTION_W / 2, 250, "GAME OVER");
//set image of 0 stars
draw_self();
image_speed = 0;