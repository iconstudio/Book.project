/// entity_checkout();

if (ds_exists(ds_type_map, VARS))
 ds_map_destroy(VARS);

ds_priority_delete_value(TURN_PRIORITY_LIST, id);

