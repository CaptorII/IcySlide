if (moving) {
	if (x != destination_x || y != destination_y) {
		x += x_speed;
		y += y_speed;
		show_debug_message("Destination: (" + string(destination_x) + ", " + string(destination_y) + ") Current pos: (" + string(x) + ", " + string(y) + ")");
	} else {
		//stop moving if on snow
		if (tilemap_get_at_pixel(snow_tilemap, x, y)) {
			//hit snow			
			moving = false;
			return;
		//keep going in the same direction if on ice
		} else if (face == 0 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x + GRID_SIZE, y)) {
			destination_x += GRID_SIZE;
		} else if (face == 1 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y - GRID_SIZE)) {
			destination_y -= GRID_SIZE;
		} else if (face == 2 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x - GRID_SIZE, y)) {
			destination_x -= GRID_SIZE;
		} else if (face == 3 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y + GRID_SIZE)) {
			destination_y += GRID_SIZE;
		} else {
			//hit a rock
			moving = false;
		}
	}
}