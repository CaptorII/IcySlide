// when player steps on warp block, warp to matching block
if (other.x == x && other.y == y && other.moving && warp_pair_exists) {
	other.x = warp_dest_x;
	other.y = warp_dest_y;
	other.face = 3;
	other.x_speed = 0;
	other.y_speed = 0;
	other.moving = false;
	global.moves_in_level++;
	image_index = 1;
	warp_pair_exists = false;
	warp_obj.image_index = 1;
	warp_obj.warp_pair_exists = false;
}