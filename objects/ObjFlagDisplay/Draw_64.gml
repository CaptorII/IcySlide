if (global.flag_count != 0){
	//set how text should look
	draw_set_font(FntMain);
	draw_set_color(c_black);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	//add text
	draw_text(RESOLUTION_W - 10, 4, flag_string);
}