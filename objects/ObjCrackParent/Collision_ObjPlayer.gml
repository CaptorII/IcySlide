if (!is_colliding) {
	if (image_index == 2) { // when fully cracked
		fall_in_water(other);
	}
	else {
		image_index++;
	}
	is_colliding = true;	
}
alarm[0]=2;