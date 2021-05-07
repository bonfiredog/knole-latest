///StartZoom(speed_base_is_50_less_is_faster,x,y)

if mInterfaceController.ChangingView = false
and mInterfaceController.CurrentHandUse != "drag"
or mInterfaceController.CurrentHandUse = "drag" and mouse_check_button(mb_any)
{ //and mBehavioursDeliberative.XYMove = false {
with mInterfaceController {
WriteToLog("Zooming now from " + string(CurrentView))
CurrentHandUse = "zoom"
ChangingView = true
ZoomTimer = 0
ZoomRate = argument0
ZoomRate = clamp(ZoomRate,10,100)

if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForwardUnCapped("comeforward",15,100 - mBehavioursDeliberative.PercentForward)
ChangingView = false
CurrentHandUse = "none"
} else {
if CurrentView = MacroView {
ChangingTo = "Micro"
ex_audio_set_volume("lowrumblezoom",0,0)
ex_audio_set_pitch("lowrumblezoom",random_range(0.95,1.05),0)
BaseZoomPitch = ex_audio_get_pitch("lowrumblezoom")
CurrentZoomPitch = BaseZoomPitch
CurrentZoomVol = 0
ex_audio_play("lowrumblezoom",1)
StartX = mInterfaceController.BaseXView
StartY = mInterfaceController.BaseYView
StartW = view_wview[0]
StartH = view_hview[0]
ViewTargetX = argument1 - (view_wview[1] / 2)
ViewTargetY = argument2 - (view_hview[1] / 2)
ChangeX = ViewTargetX - StartX
ChangeY = ViewTargetY - StartY
ChangeW = view_wview[1] - view_wview[0]
ChangeH = view_hview[1] - view_hview[0]
} else if CurrentView = MicroView {
ChangingTo = "Macro"
ex_audio_set_volume("lowrumblezoom",0,0)
ex_audio_set_pitch("lowrumblezoom",random_range(1,1.2),0)
BaseZoomPitch = ex_audio_get_pitch("lowrumblezoom")
CurrentZoomPitch = BaseZoomPitch
CurrentZoomVol = 0
ex_audio_play("lowrumblezoom",1)
StartX = mInterfaceController.BaseXView
StartW = view_wview[1]
ChangeX = 0 - StartX

StartY = mInterfaceController.BaseYView
StartH = view_hview[1]

if argument2 >= StartY {
ViewTargetY = StartY - (argument2 - StartY)
} else {
ViewTargetY = argument2
}
//ViewTargetY =  argument2 - 960
//ViewTargetY = clamp(ViewTargetY,0,1920)
ChangeY = ViewTargetY - StartY
ChangeW = view_wview[0] - view_wview[1]
ChangeH = view_hview[0] - view_hview[1]
}
}
}
}
