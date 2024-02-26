/// @description Insert description here
// You can write your code in this editor

k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
k_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
k_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

input_direction = point_direction(0, 0, k_right - k_left, k_down - k_up);
input_magnitude = (k_right - k_left != 0) || (k_down - k_up != 0);

h_speed = lengthdir_x(input_magnitude * walk_speed, input_direction);
v_speed = lengthdir_y(input_magnitude * walk_speed, input_direction);

PlayerCollision();