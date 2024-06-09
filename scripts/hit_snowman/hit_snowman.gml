function hit_snowman(_destination_x, _destination_y, _face) {
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
	var _layer_id = layer_get_id("LowerInstances");
	instance_create_layer(x, y, _layer_id, ObjFallenSnow);
	return [_destination_x, _destination_y];
}