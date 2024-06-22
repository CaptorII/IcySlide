if (moving && place_free(destination[0], destination[1]) && !semi_solid_present(destination[0], destination[1])) {
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
		} else if (face == 0 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x + GRID_SIZE, y)) {
			destination[0] += GRID_SIZE;
		} else if (face == 1 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y - GRID_SIZE)) {
			destination[1] -= GRID_SIZE;
		} else if (face == 2 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x - GRID_SIZE, y)) {
			destination[0] -= GRID_SIZE;
		} else if (face == 3 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y + GRID_SIZE)) {
			destination[1] += GRID_SIZE;
		//explode if hitting a solid
		} else if (face == 0 && semi_solid_present(x + GRID_SIZE, y)) {
			explode(x, y);
		} else if (face == 1 && semi_solid_present(x, y - GRID_SIZE)) {
			explode(x, y);
		} else if (face == 2 && semi_solid_present(x - GRID_SIZE, y)) {
			explode(x, y);
		} else if (face == 3 && semi_solid_present(x, y + GRID_SIZE)) {
			explode(x, y);
		} else {
			//hit a rock
			moving = false;
		}
	}
}