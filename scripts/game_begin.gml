/// game_begin();

game_turn_set(0);
game_realturn_set(0);

var player = instance_find(oPlayer, 1);
//ds_priority_add(TURN_PRIORITY_LIST, player, 1);
TURN_CURRENT = player;
global.turn_playerexcept = true;

INVENTORY = 0; // clear up memory

KEY_MODE = KEY_MODE_NORMAL;

