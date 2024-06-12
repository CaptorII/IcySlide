// start animation
image_speed = 6;
if (other.x == x && other.y == y) {
	alarm[0] = 80; // animation freeze after 80ms
	alarm[1] = 10; // object becomes solid after 10ms
}