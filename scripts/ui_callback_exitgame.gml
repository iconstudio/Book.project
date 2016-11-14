/// ui_callback_exitgame();

with (zui_get_parent()) { /// oUIMainFrame (0)
 selected = menu_number - 1;
 with (zui_get_parent()) {/// oMainMenu
  menu_main_update(0);

  close = true;
 }

}

