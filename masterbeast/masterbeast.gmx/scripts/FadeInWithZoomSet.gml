///FadeInWithZoomSet()

if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = false {
return 1
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = false {
return 0
} else if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = true {
return 1 - ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = true {
return 0 + ((1/mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
}
