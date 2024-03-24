//get input
k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
k_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
k_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
//set movement direction
if !moving {
	if k_right {
		face = 0;
		if place_free(x + global.grid_size, y) {
			moving = true;
			destination = vector2(x + global.grid_size, y);
			if tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1]) {
				cur_speed = ice_speed;
			} else {
				cur_speed = snow_speed;
			}
			x_speed = cur_speed;
			y_speed = 0;
		}		
	} else if k_up {
		face = 1;
		if place_free(x, y - global.grid_size) {
			moving = true;
			destination = vector2(x, y - global.grid_size);
			if tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1]) {
				cur_speed = -ice_speed;
			} else {
				cur_speed = -snow_speed;
			}
			y_speed = cur_speed;
			x_speed = 0;
		}
	} else if k_left {
		face = 2;
		if place_free(x - global.grid_size, y) {
			moving = true;
			destination = vector2(x - global.grid_size, y);
			if tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1]) {
				cur_speed = -ice_speed;
			} else {
				cur_speed = -snow_speed;
			}
			x_speed = cur_speed;
			y_speed = 0;
		}		
	} else if k_down {
		face = 3;
		if place_free(x, y + global.grid_size) {
			moving = true;
			destination = vector2(x, y + global.grid_size);
			if tilemap_get_at_pixel(ice_tilemap, destination[0], destination[1]) {
				cur_speed = ice_speed;
			} else {
				cur_speed = snow_speed;
			}
			y_speed = cur_speed;
			x_speed = 0;
		}
	}
}

if moving {
	if x != destination[0] || y != destination[1] {
		x += x_speed;
		y += y_speed;
	} else {
		if tilemap_get_at_pixel(goal, x, y) {
			level_complete();
			return;
		}
		//stop moving if on snow
		if tilemap_get_at_pixel(snow_tilemap, x, y) {
			moving = false;
			return;
		//keep going in the same direction if on ice
		} else if face == 0 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x + global.grid_size, y) {
			destination[0] += global.grid_size;
		} else if face == 1 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y - global.grid_size)  {
			destination[1] -= global.grid_size;
		} else if face == 2 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x - global.grid_size, y)  {
			destination[0] -= global.grid_size;
		} else if face == 3 && tilemap_get_at_pixel(ice_tilemap, x, y) && place_free(x, y + global.grid_size)  {
			destination[1] += global.grid_size;
		} else {
			moving = false;
		}
	}
}

//set sprite direction
sprite_index = sprite[face];