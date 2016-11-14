/// extern_entity_init();

global.entity_list = 0; //  : ENTITY_LIST
global.entity_count = 0; // : ENTITY_COUNT
global.entity_list_nmap = ds_map_create(); //  : ENTITY_LIST_NMAP

var __result = extern_buffer_check(_FILE_ENTITY);
// VERSION and _FHEADER have been read here.
if (buffer_exists(__result)) { // Just load it.
 ENTITY_COUNT = buffer_read(__result, buffer_u16);
 //show_debug_message("Open Entity Data: ENTITY_COUNT = " + string(ENTITY_COUNT));

 if (ENTITY_COUNT > 0) {
  var __load = buffer_read(__result, buffer_string);
  for (var i = 0; i < ENTITY_COUNT; i++) { // Each entity's data is a string. (map)
   ENTITY_LIST[i] = instance_create(0, 0, oEntityTemplate); // persistent
   //show_debug_message("Open Entity Data: ENTITY_LIST" + string(i + 1) + "번째 = " + string(ENTITY_LIST[i]));
   with (ENTITY_LIST[i])
    ds_map_read(VARS, __load);
  }
 }
 var __load = buffer_read(__result, buffer_string);
 ds_map_read(ENTITY_LIST_NMAP, __load);
 //show_debug_message("Open Entity Data: ENTITY_LIST_NMAP = " + __load);

 buffer_delete(__result);
} else { // make an entire entity database, then save it.
 extern_entity_save();
}

