//rock moves to where player was going to end their move
var _player_move = push_rock(other.destination[0], other.destination[1], other.face, other.x_speed, other.y_speed);
//player goes backwards one step
other.destination[0] = _player_move[0];
other.destination[1] = _player_move[1];