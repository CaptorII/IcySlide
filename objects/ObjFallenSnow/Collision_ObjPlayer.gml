// when player steps on snow, stop moving
if (other.x == x && other.y == y && other.moving) {
	other.moving = false;
	global.moves_in_level++;	
}