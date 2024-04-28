//get input
k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
k_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
k_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
//set movement direction
if (!moving) {
	if (k_right || move_right) {
		face = 0;
		move_right = false;
		if (place_free(x + GRID_SIZE, y)) {
			moving = true;
			destination = vector2(x + GRID_SIZE, y);
			if (tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1])) {
				cur_speed = ice_speed;
			} else {
				cur_speed = snow_speed;
			}
			x_speed = cur_speed;
			y_speed = 0;
		}		
	} else if (k_up || move_up) {
		face = 1;
		move_up = false;
		if (place_free(x, y - GRID_SIZE)) {
			moving = true;
			destination = vector2(x, y - GRID_SIZE);
			if (tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1])) {
				cur_speed = -ice_speed;
			} else {
				cur_speed = -snow_speed;
			}
			y_speed = cur_speed;
			x_speed = 0;
		}
	} else if (k_left || move_left) {
		face = 2;	
		move_left = false;
		if (place_free(x - GRID_SIZE, y)) {
			moving = true;
			destination = vector2(x - GRID_SIZE, y);
			if (tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1])) {
				cur_speed = -ice_speed;
			} else {
				cur_speed = -snow_speed;
			}
			x_speed = cur_speed;
			y_speed = 0;
		}		
	} else if (k_down || move_down) {
		face = 3;
		move_down = false;
		if (place_free(x, y + GRID_SIZE)) {
			moving = true;
			destination = vector2(x, y + GRID_SIZE);
			if (tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1])) {
				cur_speed = ice_speed;
			} else {
				cur_speed = snow_speed;
			}
			y_speed = cur_speed;
			x_speed = 0;
		}
	}
}

if (moving) {
	if (x != destination[0] || y != destination[1]) {
		x += x_speed;
		y += y_speed;
	} else {
		if (tilemap_get_at_pixel(goal, x, y)) {
			if (!level_complete()) {
				destination[1] += GRID_SIZE;
			}
		}
		//stop moving if on snow
		if (tilemap_get_at_pixel(snow_tilemap, x, y)) {
			//hit snow			
			moving = false;
			global.moves_in_level++;
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
		} else {
			//hit a rock
			moving = false;
			global.moves_in_level++;
		}
	}
}

//set sprite direction
sprite_index = sprite[face];