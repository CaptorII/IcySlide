drag_pos_x = event_data[?"posX"];
drag_pos_y = event_data[?"posY"];
flick_vel_y = event_data[?"diffY"];

var _pd = point_direction(drag_offset_x, drag_offset_y, drag_pos_x, drag_pos_y);
var _pl = point_distance(drag_offset_x, drag_offset_y, drag_pos_x, drag_pos_y);

camera_set_view_speed(view_camera[0], 0, flick_vel_y);

if (_pd > 90 - global.swipe_margin && _pd < 90 + global.swipe_margin) {
	y += _pl;
}	
if (_pd > 270 - global.swipe_margin && _pd < 270 + global.swipe_margin) {
	y -= _pl;
}