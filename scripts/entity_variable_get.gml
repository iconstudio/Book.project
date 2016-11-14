/// entity_variable_get(key);

if (ds_map_exists(VARS, argument0))
 return ds_map_find_value(VARS, argument0);
else
 return undefined;

