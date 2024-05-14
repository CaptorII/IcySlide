drag_end_x = event_data[?"posX"];
drag_end_y = event_data[?"posY"];

//Set min swipe length to avoid accidental swipes
if (point_distance(drag_start_x, drag_start_y, drag_end_x, drag_end_y) > (RESOLUTION_W * 0.05)) {
	var pd = point_direction(drag_start_x, drag_start_y, drag_end_x, drag_end_y);
	
	if (pd > 359 - global.swipe_margin && pd < 360 || pd < 0 + global.swipe_margin) {
		move_right = true;
		move_left = false;
		move_up = false;
		move_down = false;
	}	
	if (pd > 180 - global.swipe_margin && pd < 180 + global.swipe_margin) {
		move_right = false;
		move_left = true;
		move_up = false;
		move_down = false;
	}	
	if (pd > 90 - global.swipe_margin && pd < 90 + global.swipe_margin) {
		move_right = false;
		move_left = false;
		move_up = true;
		move_down = false;
	}	
	if (pd > 270 - global.swipe_margin && pd < 270 + global.swipe_margin) {
		move_right = false;
		move_left = false;
		move_up = false;
		move_down = true;
	}
}