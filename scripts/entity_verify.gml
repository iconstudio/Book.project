/// entity_verify(index);

if (is_undefined(argument0))
 show_error("Object Template doesn't exist!", true);

ds_map_copy(VARS, argument0.VARS);

//if (entity_get_name() == "Player")
// ds_priority_add(TURN_PRIORITY_LIST, id, 10000);
//else
 ds_priority_add(TURN_PRIORITY_LIST, id, entity_get_speed());

