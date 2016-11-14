/// extern_player_saved_init();

global.playersaved_map[0] = ds_map_create(); // : GAMESAVED
global.game_buffer = -1                      // : GAME_BUFFER
global.playersaved_index = 0;                // : PLAYER_SAVEDLOADED_INDEX

var __number = player_saved_get_numer();

if (__number > 0) { 
 for (var i = 0; i < __number; i++)
  extern_player_saved_open(i, __number);
 // preload
}

