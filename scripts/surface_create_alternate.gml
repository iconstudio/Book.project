/// surface_create_alternate(width, height, color, alpha);

var __surface = surface_create(argument0, argument1);
surface_set_target(__surface);
draw_clear_alpha(argument2, argument3);
surface_reset_target();

return __surface;

