///FourFingerJustTouched()

if device_mouse_check_button_pressed(mInterfaceController.Finger1,mb_any) 
and device_mouse_check_button_pressed(mInterfaceController.Finger2,mb_any) 
and device_mouse_check_button_pressed(mInterfaceController.Finger3,mb_any) 
and device_mouse_check_button_pressed(mInterfaceController.Finger4,mb_any) 
{
return true
}
