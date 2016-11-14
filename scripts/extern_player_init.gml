/// extern_player_init();

global.player_map = ds_map_create(); // : PLAYER_MAP
var enrtycreate = true;

var __result = extern_buffer_check(_FILE_PLAYER);
if (buffer_exists(__result)) { // Just load it.

 var __load = buffer_read(__result, buffer_string);
 ds_map_read(PLAYER_MAP, __load);
 buffer_delete(__result);

 if (player_get_name() != "")
  enrtycreate = false;

}

if (enrtycreate) {
 with (zui_main()) {
  zui_create(VIEW_MX, VIEW_MY, oProfileEntry);
 }
} else {
 room_goto_next_ext(2);
}

