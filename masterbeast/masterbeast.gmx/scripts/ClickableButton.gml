///ClickableButton(gui_x1,gui_y1,gui_x2,gui_y2)

if 
display_mouse_get_x() >= argument0 + 100
and display_mouse_get_x() <= argument2 + 100
and display_mouse_get_y() >= argument1 + 410
and display_mouse_get_y() <= argument3 + 410
and mouse_check_button_pressed(mb_any)
{ 
return true
} else {
return false
}

