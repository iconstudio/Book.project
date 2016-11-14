/// player_variable_get(key);

if (ds_map_exists(PLAYER_MAP, argument0))
 return ds_map_find_value(PLAYER_MAP, argument0);
else
 return undefined;

