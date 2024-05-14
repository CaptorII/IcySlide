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
move_left = false;
move_right = false;
move_down = false;
move_up = false;
moving = false;
last_position = vector2(0, 0);
destination = vector2(0, 0);

//detect swipes
global.swipe_margin = 45;
drag_start_x = -1;
drag_start_y = -1;
drag_end_x = -1;
drag_end_y = -1;


//sprite control
face = 3;
sprite[0] = SprFoxRight;
sprite[1] = SprFoxUp;
sprite[2] = SprFoxLeft;
sprite[3] = SprFoxDown;

ice_tilemap = layer_tilemap_get_id(layer_get_id("IceTiles"));
snow_tilemap = layer_tilemap_get_id(layer_get_id("SnowTiles"));