//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//add text
draw_text(RESOLUTION_W / 2, 50, string(room_get_name(global.previous_level)));
draw_text(RESOLUTION_W / 2, 150, "Moves: " + string(global.final_score));