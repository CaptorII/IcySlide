function hit_tree(_destination_x, _destination_y, _face) {
	switch (_face) {
		case 0: 
			_destination_x -= GRID_SIZE;
			break;
		case 1: 
			_destination_y += GRID_SIZE;
			break;
		case 2: 
			_destination_x += GRID_SIZE;
			break;
		case 3: 
			_destination_y -= GRID_SIZE;
	}
	// add snow to tilemap
	//var _layer_id = layer_tilemap_get_id(layer_get_id("SnowTiles"));
	//tilemap_set_at_pixel(_layer_id, 46, x - GRID_SIZE, y);
	//tilemap_set_at_pixel(_layer_id, 46, x, y + GRID_SIZE);
	//tilemap_set_at_pixel(_layer_id, 46, x + GRID_SIZE, y);
	//tilemap_set_at_pixel(_layer_id, 46, x, y - GRID_SIZE);
	// add snow as object
	var _layer_id = layer_get_id("LowerInstances");
	instance_create_layer(x - GRID_SIZE, y, _layer_id, ObjFallenSnow);
	instance_create_layer(x, y + GRID_SIZE, _layer_id, ObjFallenSnow);
	instance_create_layer(x + GRID_SIZE, y, _layer_id, ObjFallenSnow);
	instance_create_layer(x, y - GRID_SIZE, _layer_id, ObjFallenSnow);
	return [_destination_x, _destination_y];
}