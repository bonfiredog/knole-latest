///ChangeSpriteWithZoom(so_xscale,so_scale,si_xscale,si_yscale)

if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = false {
SpriteIndexOutXScale = 0
SpriteIndexOutYScale = 0
SpriteIndexOutAlpha = 0
SpriteIndexInAlpha = 1
SpriteIndexInXScale = argument2
SpriteIndexInYScale = argument3
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = false {
SpriteIndexOutXScale = argument0
SpriteIndexOutYScale = argument1
SpriteIndexOutAlpha = 1
SpriteIndexInAlpha = 0
SpriteIndexInXScale = 0
SpriteIndexInYScale = 0
} else if mInterfaceController.CurrentView = MicroView
and mInterfaceController.ChangingView = true {
SpriteIndexOutXScale = 0 + ((argument0 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexOutYScale = 0 + ((argument1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexOutAlpha = 0 + ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInAlpha = 1 - ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInXScale = argument2 - ((argument2 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInYScale = argument3 - ((argument3 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
} else if mInterfaceController.CurrentView = MacroView
and mInterfaceController.ChangingView = true {
SpriteIndexOutXScale = argument0 - ((argument0 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexOutYScale = argument1 - ((argument1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexOutAlpha = 1 - ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInAlpha = 0 + ((1 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInXScale = 0 + ((argument2 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
SpriteIndexInYScale = 0 + ((argument3 / mInterfaceController.ZoomRate) * mInterfaceController.ZoomTimer)
}
