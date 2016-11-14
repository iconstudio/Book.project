/// ui_popup_show(0title, 1caption, 2button0, 3button0_callback, [4button1, 5button1_callback], ...);

var _target = id;
var _popup = noone;

with (zui_main()) {
 var _black = zui_create(0, 0, oUIBlack);

 _popup = zui_create(VIEW_MX, VIEW_MY, oUIPopup);

 with (_popup) {
  var buttons = floor((argument_count - 2) / 2);

  var swidth = ceil(string_width(argument[1]) * 0.5) * 2;
  var sheight = ceil(string_height(argument[1]) * 0.5) * 2;

  zui_set_size(160 + swidth + (buttons - 1) * 96, 200 + sheight);
  var width = zui_get_width();
  var height = zui_get_height();

  black = _black;
  target = _target;

  with (zui_create(0, 0, oUIWindowCaption)) {
   draggable = true;

   caption = argument[0];
   color = 0;
  }

  with (zui_create(VIEW_DX + width * 0.5, 50, oUILabel)) {
   zui_set_size(swidth, sheight);

   caption = argument[1];
   valign = 0;
  }

  for (var i = 0; i < buttons; i++) {
   button[i] = zui_create(width * 0.5 + (i - (buttons - 1) * 0.5) * 90, height - 44, oUIPopupButton);
   with (button[i]) {
    zui_set_size(80, 60);

    color = $948168;
    caption = argument[i * 2 + 2];
    callback = argument[i * 2 + 3];
   }
   button_callback[i] = argument[i * 2 + 3];
  }
 }
}

return _popup;

