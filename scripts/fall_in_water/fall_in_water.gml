function fall_in_water(_player){	
	instance_destroy(_player); // remove player
	draw_sprite(SprSplash, -1, _player.x, _player.y); // show splash
	alarm[1] = 60; // wait 1 second, then restart
}