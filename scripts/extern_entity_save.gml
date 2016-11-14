/// extern_entity_save();

var __buffer = extern_buffer_create();

extern_entity_create();
buffer_write(__buffer, buffer_u16, ENTITY_COUNT);
if (ENTITY_COUNT > 0) {
 for (var i = 0; i < ENTITY_COUNT; i++) {
  with (ENTITY_LIST[i]) {
   var __save = ds_map_write(VARS);
   buffer_write(__buffer, buffer_string, __save);
  }
 }
}

var __save = ds_map_write(ENTITY_LIST_NMAP);
buffer_write(__buffer, buffer_string, __save);

extern_buffer_save(_FILE_ENTITY, __buffer);

