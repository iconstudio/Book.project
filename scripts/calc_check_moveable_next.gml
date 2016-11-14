/// calc_check_moveable_next(vec_x, vec_y);

var cx = x + argument0;
var cy = y + argument1;

var ce = collision_point(cx + 16, cy + 16, oEntityParent, false, true) > 0;
var cs = collision_point(cx + 16, cy + 16, oSolidParent, false, true) > 0;

return !ce && !cs;

