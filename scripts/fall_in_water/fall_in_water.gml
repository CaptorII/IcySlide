function fall_in_water(_player){
	instance_destroy(_player); // remove player
	alarm[1] = 60; // wait 1 second, then restart
}