if (!is_colliding) {
	if (image_index == (image_number - 2)) { // when fully cracked
		fall_in_water(other);
	}
	image_index++;
	is_colliding = true;	
}
alarm[0] = 2;