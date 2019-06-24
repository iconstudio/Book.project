/// extern_player_saved_open(index, max);

if (argument1 <= argument0 || argument1 >= PLAYER_SAVED_NUMBER_MAX) {
 show_error("저장된 게임 정보를 불러오는 중에 오류가 발생했습니다! 현재 저장된 게임의 수보다 시스템에서 전달한 숫자가 더 큽니다.", true);
}

GAME_BUFFER[argument0] = extern_buffer_check2(_FILE_GAMESAVED + string_filling(string(argument0), "0", 3));
if (buffer_exists(GAME_BUFFER[argument0])) { // Just load it.
 var __load = buffer_read(GAME_BUFFER[argument0], buffer_string);
 if (is_undefined(GAMESAVED[argument0]) || !ds_exists(GAMESAVED[argument0], ds_type_map))
  GAMESAVED[argument0] = ds_map_create();

 ds_map_read(GAMESAVED[argument0], __load);
 buffer_delete(GAME_BUFFER[argument0, 0]);
}

return GAME_BUFFER[argument0, 1]; // is it different from current version
// The saved game data doesn't matter version.

