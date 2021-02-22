///FadeInWithZoom

if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = false {
image_alpha = 1
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = false {
image_alpha = 0
} else if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = true {
image_alpha = 1 - ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = true {
image_alpha = 0 + ((1/mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
}
