draw_self();
//set how text should look
draw_set_font(FntMain);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//add text
draw_text(x + 32, y + 32, btn_text);