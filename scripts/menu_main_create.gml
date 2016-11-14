/// menu_main_create(window);

menu_index[menu_number] = zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, argument0, 100);
with (menu_index[menu_number]) {
 zui_set_size(VIEW_DW, VIEW_DH);

 close = true;
 animate = 0;
 zui_set_visible(false);

 // oUIGlasssButton
 selected = 0;
 menu_index = 0;
 menu_number = 0;

 my = 80;
}

return menu_index[menu_number++];

