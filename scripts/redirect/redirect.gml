function redirect() {
	switch (face) {
		case 0: // move right
			return [x + GRID_SIZE, y, 8, 0];
		case 1: // move up
			return [x, y - GRID_SIZE, 0, -8];
		case 2: // move left
			return [x - GRID_SIZE, y, -8, 0];
		case 3: // move down
			return [x, y + GRID_SIZE, 0, 8];
	}
}