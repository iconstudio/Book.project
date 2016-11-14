/// ui_callback_mainback();

with (zui_get_parent()) { /// oUIMainFrame (0)
 selected = menu_number - 1;

 with (zui_get_parent()) /// oMainMenu
  menu_main_update(0);

}

