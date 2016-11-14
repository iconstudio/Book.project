/// game_turn_process();
// goto next turn or find new instance to have current turn.

var move_speed = entity_get_speed();
var turn_used = 10 / move_speed;

if (object_index == oPlayer && game_turn_get_current() == id) {
 game_turn_add(turn_used);
 game_realturn_add(1);
} // if player has moved, each turn will increase.

entity_add_turn_private(turn_used);
game_turn_go_next();


