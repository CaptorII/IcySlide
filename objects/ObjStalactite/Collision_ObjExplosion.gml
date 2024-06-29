if (!solid) {
	// start animation
	image_speed = 6;
	// animation freeze after 80ms
	alarm[0] = 80;
	// object becomes solid after 10ms
	alarm[1] = 10;
} else {
	instance_destroy();
}