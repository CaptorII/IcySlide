// when rock lands on snow, stop moving
if (other.x == x && other.y == y && other.moving) {
	other.moving = false;
}