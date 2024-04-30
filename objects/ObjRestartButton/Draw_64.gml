//draw background sprite
draw_sprite(SprLvlBtn, 0, RESOLUTION_W - 64, RESOLUTION_H - 64)
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//add text
draw_text(0, 0, "Restart");