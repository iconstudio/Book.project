/// game_init();

global.__dungeonmap = 0; // 2d array (instance: oMapBranch<persistent>)
// [branch, instance/name/loaded]
//global.__dungeonmap_loaded = false;// 1d array (boolean)
// [branch]

global.__turn = 0;
global.__realturn = 0;

global.__turnlist = ds_priority_create();
global.__turnlistcopy = ds_priority_create();
global.__turn_current = noone;
global.turn_playerexcept = true;

global.__inventory = 0; // 2d array (instance: item<persistent>)
// [index, name/type/number/stackable]
global.__inventorymax = 20; // int

global.__keymode = KEY_MODE_NORMAL;
// normal
// fire
// wield
// wear
// put jewellery



