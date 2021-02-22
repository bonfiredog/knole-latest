///NumberOfFingersTouching()





/*if device_mouse_check_button_pressed(mInterfaceController.Finger1, mb_left)
or device_mouse_check_button(mInterfaceController.Finger1, mb_left) 
or device_mouse_check_button_released(mInterfaceController.Finger1, mb_left) 
{
Number = 1
}





if device_mouse_check_button(0,mb_left) and device_mouse_check_button(1,mb_left) {
Number = 2
}
/*
else if device_mouse_check_button(mInterfaceController.Finger2, mb_left) 
or device_mouse_check_button_pressed(mInterfaceController.Finger2, mb_left) 
or device_mouse_check_button_released(mInterfaceController.Finger2, mb_left) 
{
Number = 2
}



/*
device_mouse_check_button(mInterfaceController.Finger1, mb_left) 
and device_mouse_check_button(mInterfaceController.Finger2, mb_left)
{
Number = 2
}


else if device_mouse_check_button(mInterfaceController.Finger1, mb_left) 
and device_mouse_check_button(mInterfaceController.Finger2, mb_left)
and device_mouse_check_button(mInterfaceController.Finger3, mb_left)
{
Number = 3
}

else if device_mouse_check_button(mInterfaceController.Finger1, mb_left) 
and device_mouse_check_button(mInterfaceController.Finger2, mb_left)
and device_mouse_check_button(mInterfaceController.Finger3, mb_left)
and device_mouse_check_button(mInterfaceController.Finger4, mb_left)
{
Number = 4
}

else if device_mouse_check_button(mInterfaceController.Finger1, mb_left)
and device_mouse_check_button(mInterfaceController.Finger2, mb_left)
and device_mouse_check_button(mInterfaceController.Finger3, mb_left)
and device_mouse_check_button(mInterfaceController.Finger4, mb_left)
and device_mouse_check_button(mInterfaceController.Thumb, mb_left)
{
Number = 5
}
*/




if device_mouse_check_button(0, mb_left) {
Number = 2
} else {
Number = 0
}

return Number
