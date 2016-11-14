/// extern_buffer_check(filename);

var __file = argument0;

if (!file_exists(__file))
 return -3;

var __buffer = buffer_load(__file);
var __size = buffer_get_size(__buffer);
if (__size == 0)
 return -1;

if (buffer_read(__buffer, buffer_u16) != VERSION) {
 show_error("읽어들이려는 파일의 버전이 게임의 버전과 같지 않습니다!", false);
 buffer_delete(__buffer);
 return -2;
}

if (buffer_read(__buffer, buffer_u16) != _FHEADER) {
 show_error("잘못된 정보를 불러오려 합니다!#새로 정보를 저장합니다.", false);
 buffer_delete(__buffer);
 return -2;
}

return __buffer;

