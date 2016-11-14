/// extern_player_init();

global.key_map = ds_map_create(); // : KEY_MAP
global.key_modified = false; //      : KEY_MODIFIED

var __result = extern_buffer_check(_FILE_KEY);
if (buffer_exists(__result)) { // Just load it.

  var __load = buffer_read(__result, buffer_string);
  ds_map_read(KEY_MAP, __load);
  // Just load data from buffer, either modified or not.

  input_set_map();

 buffer_delete(__result);
} else { // make a key-map, then save it.
 extern_key_create();
 input_set_map();
 extern_key_save();
}

