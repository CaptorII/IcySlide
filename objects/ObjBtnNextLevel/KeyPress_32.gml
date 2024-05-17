if (global.previous_level == LAST_LEVEL) {
	room_goto(0);
} else {	
	room_goto(global.next_level);
}