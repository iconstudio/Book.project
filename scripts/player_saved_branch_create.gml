/// player_saved_branch_create(index, wall, instance, item, cloud, effect);

var __branch = instance_create(0, 0, oMapBranch);
var __bind = argument0;

with (__branch) {
 ds_map_read(BRANCH_DATA, player_saved_get_branch(__bind));

 if (argument1) // wall
  event_user(0);
 if (argument2) // instance
  event_user(1);
 if (argument3) // item
  event_user(2);
 if (argument4) // cloud
  event_user(3);
 if (argument5) // effect
  event_user(4);

}

