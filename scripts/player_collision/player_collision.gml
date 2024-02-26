// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro TILE_SIZE 64

function player_collision(){
	var _collision = false;
	
	//horizontal
	if (tilemap_get_at_pixel(collision_map, x + h_speed, y)) 
	{
		x -= x mod TILE_SIZE; // move to left border of tile if going left
		if (sign(h_speed) == 1) 
		{
			x += TILE_SIZE - 1; // move to right border of tile if going right
		}		
		h_speed = 0; // stop moving
		_collision = true;
	}	
	
	x += h_speed;
	
	//vertical
	if (tilemap_get_at_pixel(collision_map, x, y + v_speed)) 
	{
		y -= y mod TILE_SIZE; // move to top border of tile if going up
		if (sign(v_speed) == 1) 
		{
			y += TILE_SIZE - 1; // move to bottom border of tile if going down
		}		
		v_speed = 0; // stop moving
		_collision = true;
	}	
	
	y += v_speed;
	
	return _collision;
}