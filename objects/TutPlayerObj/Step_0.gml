//get input
k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
k_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
k_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//movement
#region
var _horiz_key = k_right - k_left;
var _vert_key = k_down - k_up;
move_dir = point_direction(0, 0, _horiz_key, _vert_key);

var _speed = 0;
var _level = point_distance(0, 0, _horiz_key, _vert_key);
//_level = clamp(_level, 0, 1); //make diagonal movespeed identical to non-diagonal
_speed = move_speed * _level;

x_speed = lengthdir_x(_speed, move_dir);
y_speed = lengthdir_y(_speed, move_dir);

//check collision
if place_meeting(x + x_speed, y, WallObj) { x_speed = 0; }
if place_meeting(x, y + y_speed, WallObj) { y_speed = 0; }

//commit movement
x += x_speed;
y += y_speed;
#endregion

//sprite control
#region
//pick sprite based on movement direction
face = round(move_dir / 90);
if face == 4 { face = 0; }

//stop animating sprite when not moving
if x_speed == 0 && y_speed == 0 { image_index = 0; }

//set sprite
sprite_index = sprite[face];
#endregion