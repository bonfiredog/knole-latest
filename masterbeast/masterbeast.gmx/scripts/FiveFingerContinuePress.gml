///FiveFingerContinuePress

if device_mouse_check_button(mInterfaceController.Finger1,mb_any) 
and device_mouse_check_button(mInterfaceController.Finger2,mb_any) 
and device_mouse_check_button(mInterfaceController.Finger3,mb_any)
and device_mouse_check_button(mInterfaceController.Finger4,mb_any)
and device_mouse_check_button(mInterfaceController.Thumb,mb_any)
{
return true
}
