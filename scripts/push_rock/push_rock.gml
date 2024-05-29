function push_rock(_destination_x, _destination_y, _face, _x_speed, _y_speed) {
	moving = true;
	face = _face;
	x_speed = _x_speed;
	y_speed = _y_speed;
	destination_x = _destination_x;
	destination_y = _destination_y;
	switch (face) {
		case 0: 
			destination_x += GRID_SIZE;
			return [_destination_x - GRID_SIZE, _destination_y, -x_speed. y_speed];
		case 1: 
			destination_y -= GRID_SIZE;	
			return [_destination_x, _destination_y + GRID_SIZE, x_speed, -y_speed];
		case 2: 
			destination_x -= GRID_SIZE;	
			return [_destination_x + GRID_SIZE, _destination_y, -x_speed, y_speed];
		case 3: 
			destination_y += GRID_SIZE;
			return [_destination_x, _destination_y - GRID_SIZE, x_speed, -y_speed];
	}
}