image_speed = 0;
alarm[0] = 20;
// set destination to warp to
warp_dest_x = 0;
warp_dest_y = 0;
warp_pair_exists = false;
warp_obj = object_index;

if (instance_number(ObjBrokenWarpParentB) > 0) {
	var _warps;
	for (var _i = 0; _i < instance_number(ObjBrokenWarpParentB); _i++;) {
		_warps[_i] = instance_find(ObjBrokenWarpParentB, _i);
	}	
	for (var _i = 0; _i < instance_number(ObjBrokenWarpParentB); _i++;) {
		if (object_get_sprite(object_index) == object_get_sprite(_warps[_i].object_index)) {
			warp_dest_x = _warps[_i].x;
			warp_dest_y = _warps[_i].y;
			warp_pair_exists = true;
			warp_obj = _warps[_i];
		}
	}
}