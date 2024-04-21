if (global.flag_count != 0){
	//draw background for display
	draw_set_color(c_white);
	draw_rectangle((RESOLUTION_W/2), 0, RESOLUTION_W, 64, false);
	//set how text should look
	draw_set_font(FntMain);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	//add text
	draw_text((RESOLUTION_W/2)+5, 10, flag_string);
}