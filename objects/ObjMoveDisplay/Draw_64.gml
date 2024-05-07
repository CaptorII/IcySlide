//draw background for display
draw_sprite(SprHudBg, 0, 0, 0);
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//add text
draw_text(10, 4, move_string);