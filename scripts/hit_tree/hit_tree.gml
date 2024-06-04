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
	var _layer_id = layer_tilemap_get_id(layer_get_id("SnowTiles"));
	tilemap_set_at_pixel(_layer_id, 46, x - GRID_SIZE, y);
	tilemap_set_at_pixel(_layer_id, 46, x, y + GRID_SIZE);
	tilemap_set_at_pixel(_layer_id, 46, x + GRID_SIZE, y);
	tilemap_set_at_pixel(_layer_id, 46, x, y - GRID_SIZE);
	return [_destination_x, _destination_y];
}