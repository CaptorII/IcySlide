// drop snow on your position
var _player_move = hit_tree(other.destination[0], other.destination[1], other.face);
// player goes backwards one step
other.destination[0] = _player_move[0];
other.destination[1] = _player_move[1];