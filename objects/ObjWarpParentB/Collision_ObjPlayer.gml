// when player steps on warp block, warp to matching block
if (other.x == x && other.y == y && other.moving && warp_pair_exists && !instance_position(warp_dest_x, warp_dest_y, ObjPlayer)) {
	other.x = warp_dest_x;
	other.y = warp_dest_y;
	other.face = 3;
	other.x_speed = 0;
	other.y_speed = 0;
	other.moving = false;
	global.moves_in_level++;	
}