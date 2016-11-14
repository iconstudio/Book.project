/// menu_main_add(button, width, caption, callback);

var gbh = 45;

menu_index[menu_number] = zui_create(zui_get_width() * 0.5, my, argument0, -1);
with (menu_index[menu_number]) {
 zui_set_anchor(0.5, 0);
 zui_set_size(argument1, gbh);

 animate = 1;

 caption = argument2;
 callback = argument3;
}

my += gbh + 5;

return menu_index[menu_number++];

