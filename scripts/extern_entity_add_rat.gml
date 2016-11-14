/// extern_entity_add_rat();

var __inst = extern_entity_detail("Rat", "", 1, 10);

with (__inst) {
 entity_set_hp(4);
 entity_set_hp_max(4);
 entity_set_mp(0);
 entity_set_mp_max(0);
 entity_set_ac(1);
 entity_set_ac_default(1);
 entity_set_evasion(1);
 entity_set_speed(10);
 entity_set_speed_attack(10);
 entity_set_size(SIZE_TINY);
 entity_set_resistant_fire(0);
 entity_set_resistant_cold(0);
 entity_set_resistant_negative(0);
 entity_set_resistant_magic(0);
}

ds_map_add(ENTITY_LIST_NMAP, "Rat", ENTITY_COUNT);

ENTITY_LIST[ENTITY_COUNT++] = __inst;

