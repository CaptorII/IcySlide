global.grid_size = 64;

//movement
ice_speed = 8;
snow_speed = 4;
cur_speed = 0;
x_speed = 0;
y_speed = 0;
k_left = 0;
k_right = 0;
k_down = 0;
k_up = 0;
moving = false;
destination = vector2(0, 0);

//sprite control
face = 3;
sprite[0] = SprPlayerRight;
sprite[1] = SprPlayerUp;
sprite[2] = SprPlayerLeft;
sprite[3] = SprPlayerDown;

ice_tilemap = layer_tilemap_get_id(layer_get_id("IceTiles"));
snow_tilemap = layer_tilemap_get_id(layer_get_id("SnowTiles"));