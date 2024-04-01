function level_complete(){
	if (room == LAST_LEVEL) {
		room_goto(0);
	} else {	
		room_goto_next();
	}
}