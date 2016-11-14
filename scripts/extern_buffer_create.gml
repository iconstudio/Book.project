/// extern_buffer_create();

var __buffer = buffer_create(2048, buffer_grow, 1);
buffer_write(__buffer, buffer_u16, VERSION);
buffer_write(__buffer, buffer_u16, _FHEADER);

return __buffer;

