//draw background for display
draw_set_color(c_white);
draw_rectangle(0, 0, RESOLUTION_W, 64, false);
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//add text
draw_text(5, 10, move_string);