///InVolMod(basevolume)

if mInterfaceController.CurrentView = MacroView {
//If Zooming In
if mInterfaceController.ChangingView = true {
return 0 + ((argument0 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
return 0
}
} else if mInterfaceController.CurrentView = MicroView {
//If Zooming In
if mInterfaceController.ChangingView = true {
return argument0 - ((argument0 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
return argument0
}
} else {
return argument0
} 
