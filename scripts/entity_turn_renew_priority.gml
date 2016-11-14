/// entity_turn_renew_priority(speed);

if (entity_get_status() < ST_DEAD) {
 ds_priority_change_priority(TURN_PRIORITY_LIST, id, argument0);
}

