///BothVolMod(basezoomedoutvolume)

if mBehavioursDeliberative.PercentForward <= 0
{
return 0
} else {

if mInterfaceController.CurrentView = MacroView {
if mInterfaceController.ChangingView = true {
return argument0 + (((argument0 / 2) / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
//If Disappearing/Reappearing
if mBehavioursDeliberative.PercentForward >= 70 {
return argument0
} else {
return (argument0 / 70) * mBehavioursDeliberative.PercentForward
}
}

} else if mInterfaceController.CurrentView = MicroView {
//If Zooming In
if mInterfaceController.ChangingView = true {
return (argument0 * 1.1) - (((argument0 / 2) / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
//If Stable
} else {
return argument0 * 1.1
}
}
}

