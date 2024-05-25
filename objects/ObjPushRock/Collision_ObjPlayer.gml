//on collision with player:
//rock moves to where player was going to end their move
push_rock(other.destination[0], other.destination[1], other.face, other.x_speed, other.y_speed);
//player stops
other.moving = false;
global.moves_in_level++;