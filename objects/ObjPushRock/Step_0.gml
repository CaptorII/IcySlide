adjacent[0] = instance_position(x + GRID_SIZE, y, global.semi_solids);
adjacent[1] = instance_position(x, y - GRID_SIZE, global.semi_solids);
adjacent[2] = instance_position(x - GRID_SIZE, y, global.semi_solids);
adjacent[3] = instance_position(x, y + GRID_SIZE, global.semi_solids);
if ((adjacent[0] && adjacent[2]) || (adjacent[1] && adjacent[3])) {	
	solid = true;
} else {
	solid = false;
}
if (moving) {
	if (x != destination[0] || y != destination[1]) {
		x += x_speed;
		y += y_speed;
		//show_debug_message("Destination: (" + string(destination_x) + ", " + string(destination_y) + ") Current pos: (" + string(x) + ", " + string(y) + ")");
	} else {
		//stop moving if on snow
		if (tilemap_get_at_pixel(snow_tilemap, x, y)) {
			//hit snow			
			moving = false;
			return;
		//keep going in the same direction if on ice
		} else if (face == 0 && tilemap_get_at_pixel(ice_tilemap, x, y) && !semi_solid_present(x + GRID_SIZE, y) ) {
			destination[0] += GRID_SIZE;
		} else if (face == 1 && tilemap_get_at_pixel(ice_tilemap, x, y) && !semi_solid_present(x, y - GRID_SIZE)) {
			destination[1] -= GRID_SIZE;
		} else if (face == 2 && tilemap_get_at_pixel(ice_tilemap, x, y) && !semi_solid_present(x - GRID_SIZE, y)) {
			destination[0] -= GRID_SIZE;
		} else if (face == 3 && tilemap_get_at_pixel(ice_tilemap, x, y) && !semi_solid_present(x, y + GRID_SIZE)) {
			destination[1] += GRID_SIZE;
		} else {
			//hit something solid-ish
			moving = false;
		}
	}
}