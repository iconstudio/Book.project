/// extern_entity_detail(1name, 2name_ref, 3hd, 4xp);

var new = instance_create(0, 0, oEntityTemplate);
with (new) {
 entity_set_status(ST_NORMAL);
 entity_set_turn_private(0);
 entity_set_name(argument0);
 entity_set_name(argument0);
 entity_set_name_reference(argument1);
 entity_set_hd(argument2);
 entity_set_xp(argument3);
}

return new;

