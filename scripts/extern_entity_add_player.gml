/// extern_entity_add_player();

var __inst = extern_entity_detail("Player", "", 1, 0);

with (__inst) {
 entity_set_hp(10);
 entity_set_hp_max(10);
 entity_set_mp(3);
 entity_set_mp_max(3);
 entity_set_ac(2);
 entity_set_ac_default(2);
 entity_set_evasion(3);
 entity_set_speed(10);
 entity_set_speed_attack(10);
 entity_set_size(SIZE_MEDIUM);
 entity_set_resistant_fire(0);
 entity_set_resistant_cold(0);
 entity_set_resistant_negative(0);
 entity_set_resistant_magic(20);
}

ds_map_add(ENTITY_LIST_NMAP, "Player", ENTITY_COUNT);

ENTITY_LIST[ENTITY_COUNT++] = __inst;

