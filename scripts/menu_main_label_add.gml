/// menu_main_label_add(caption);

var gbh = 50;

var label = zui_create(zui_get_width() * 0.5, my, oUILabel, -1);
with (label) {
 zui_set_anchor(0.5, 0);

 caption = argument0;
 color = 0;
}

my += gbh + 8;

return label;

