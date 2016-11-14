/// input_set_map();

keyboard_unset_map();

keyboard_set_map(vk_left, ds_map_find_value(KEY_MAP, KEY_MOVE_L));
keyboard_set_map(vk_up, ds_map_find_value(KEY_MAP, KEY_MOVE_U));
keyboard_set_map(vk_right, ds_map_find_value(KEY_MAP, KEY_MOVE_R));
keyboard_set_map(vk_down, ds_map_find_value(KEY_MAP, KEY_MOVE_D));
keyboard_set_map(vk_space, ds_map_find_value(KEY_MAP, KEY_ACTION_REST));

