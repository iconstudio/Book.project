/// zui_create(x, y, object, [depth]);

var newid = instance_create(0, 0, oZUIDummy);

with (newid) {
 zui_x_node_init();
 __x = argument[0];
 __y = argument[1];
 __parent = other.id;

 instance_change(argument[2], 1);

 if (argument_count >= 4)
  depth = argument[3];

 visible = false;

 if (argument[2] == oUIWindow || object_get_parent(argument[2]) == oUIWindow)
  ds_stack_push(global.__zui_stack, id);
}

zui_add_child(newid);

return newid;

