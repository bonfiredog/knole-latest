///FourFingerRelease
if device_mouse_check_button_released(mInterfaceController.Finger1,mb_any) 
and device_mouse_check_button_released(mInterfaceController.Finger2,mb_any) 
and device_mouse_check_button_released(mInterfaceController.Finger3,mb_any) 
and device_mouse_check_button_released(mInterfaceController.Finger4,mb_any) 
{
return true
}
