/// extern_key_save();

var __buffer = extern_buffer_create();

var __save = ds_map_write(KEY_MAP);
buffer_write(__buffer, buffer_string, __save);

extern_buffer_save(_FILE_KEY, __buffer);

