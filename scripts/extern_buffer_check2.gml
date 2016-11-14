/// extern_buffer_check2(filename);

var __file = argument0;

if (!file_exists(__file))
 return -3;

var __result;
__result[0] = buffer_load(__file);
__result[1] = false;

var __size = buffer_get_size(__result[0]);
if (__size == 0)
 return -1;

if (buffer_read(__result[0], buffer_u16) != VERSION) {
 //show_error("Different Version from Data!#Closing file.", false);
 //buffer_delete(__result[0]);
 __result[1] = true;
}

if (buffer_read(__result[0], buffer_u16) != _FHEADER) {
 show_error("Wrong Data!#Closing file.", false);
 buffer_delete(__result[0]);
 return -2;
}

return __result;

