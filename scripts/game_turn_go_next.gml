/// game_turn_go_next();

var olist_size = ds_priority_size(TURN_PRIORITY_LIST);
if (olist_size == 0) {
 show_error("There is no Entity in the Queue.", true);
 exit;
}

if (olist_size == 1) {
 game_turn_set_current(ds_priority_find_max(TURN_PRIORITY_LIST));

 show_debug_message("There is only an Entity in the Queue.");
 exit;
}

if (global.turn_playerexcept) { // The beggining of turn is Player, but Player has exclusive one.
 ds_priority_copy(TURN_PRIORITY_LIST_COPY, TURN_PRIORITY_LIST);
 ds_priority_delete_value(TURN_PRIORITY_LIST_COPY, oPlayer.id);

 global.turn_playerexcept = false;
}

//var private_turn = entity_get_turn(); // preserve current turn instance.
var next = noone;

while (true) { // until priority queue is empty
 list_size = ds_priority_size(TURN_PRIORITY_LIST_COPY);

 if (list_size == 0) { // restart (include itself)
  ds_priority_copy(TURN_PRIORITY_LIST_COPY, TURN_PRIORITY_LIST);
  game_turn_set_current(ds_priority_find_max(TURN_PRIORITY_LIST));

  exit;
 } // find other instance to have current turn

 next = ds_priority_delete_max(TURN_PRIORITY_LIST_COPY);
 if (instance_exists(next)) {
  with (next) {
   var n_speed = 10 / entity_get_speed();
   var n_turn = entity_get_turn();
   var n_name = entity_get_name();
  }

  if (private_turn >= n_speed) {
   game_turn_set_current(next);
   entity_add_turn_private(-1);
   //entity_set_position(x, y);

    //don't need to renew priority queue

   show_debug_message("Get Next Turn: " + n_name);
   break;
  }
 } else {
  show_error("An instance in Priority Queue doesen't exist!", true);
 }
}


