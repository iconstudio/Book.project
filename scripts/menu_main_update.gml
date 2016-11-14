/// menu_main_update(select);

if (selectedprev != argument0) {
 with (menu_index[selectedprev])
  close = true;

 selectedprev = argument0;
 with (menu_index[argument0])
  close = false;
}

