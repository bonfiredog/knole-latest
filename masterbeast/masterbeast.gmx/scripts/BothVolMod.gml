///BothVolMod(basezoomedoutvolume)

if mBehavioursDeliberative.PercentForward <= 0
{
return 0
} 
else if mInterfaceController.CurrentView = MacroView {
//If Disappearing/Reappearing
if instance_exists(mBehavioursDeliberative.DScreen) {
return argument0 / 6 + ((((argument0 / 6) * 5) / 100) * (mBehavioursDeliberative.DScreen.image_alpha * 100))
//If Zooming In
} else if mInterfaceController.ChangingView = true {
return argument0 + (((argument0 / 2) / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
return argument0
}

} else if mInterfaceController.CurrentView = MicroView {
//If Zooming In
if mInterfaceController.ChangingView = true {
return (argument0 * 1.1) - (((argument0 / 2) / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
return argument0 * 1.1
}
} else {
return argument0
} 
