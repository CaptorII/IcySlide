// when player hits snowman, play animation of snowman being destroyed
image_index = 1;
alarm[0] = 30;
// stop player moving
var _player_move = hit_snowman(other.destination[0], other.destination[1], other.face);
// player goes backwards one step
other.destination[0] = _player_move[0];
other.destination[1] = _player_move[1];
// snowman becomes impassable until it is destroyed
solid = true;