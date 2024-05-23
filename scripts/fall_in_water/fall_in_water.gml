function fall_in_water(_player) {
	instance_destroy(_player); // remove player
	alarm[1] = 60; // wait 1 second, then restart
}

function rock_fall_in_water(_rock) {
	instance_destroy(_rock); // remove rock
	alarm[2] = 60; // wait 1 second and reset crack
}