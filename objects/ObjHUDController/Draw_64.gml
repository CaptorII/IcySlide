// draw background for display
draw_sprite(SprHudBg, 0, 0, 0);
// set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
// add move text
draw_text(50, 4, move_string);
// add move icon
draw_sprite(SprMoveIcon, 0, 10, 5);

// add stamina bar
draw_sprite_ext(SprStaminaBar, stamina_step, (RESOLUTION_W * 0.5) - 128, 6, 1, 0.7, 0, -1, 1);

// add level name at top
draw_set_halign(fa_center);
draw_text((RESOLUTION_W * 0.5), 40, level_name);

if (global.flag_count != 0) {
	// add flag text
	draw_set_halign(fa_right);
	draw_text(RESOLUTION_W - 10, 4, flag_string);
	// add flag icon
	draw_sprite(SprFlagIcon, 0, RESOLUTION_W - 100, 5);
}