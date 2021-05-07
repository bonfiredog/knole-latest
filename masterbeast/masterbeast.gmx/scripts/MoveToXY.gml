///MoveToXY(x,y,speed,zoom,zoomspeed)

with mBehavioursDeliberative {
if PercentForward < 100 {
MoveBackForwardUnCapped("comeforward",MoveSpeedCalc(),100 - PercentForward)
MoveXYAfter = true
AfterDestX = argument0
AfterDestY = argument1
AfterZoom = argument3
AfterZoomSpeed = argument4
AfterSpeed = argument2
} else {
XYMove = true
DestX = argument0
DestY = argument1
DestZoom = argument3
DestZoomSpeed = argument4
DestSpeed = argument2
MoveTime = 0

if mInterfaceController.CurrentView != DestZoom {
if  mInterfaceController.CurrentView = MacroView {
StartZoom(DestZoomSpeed,DestX,DestY)
XYMove = false
DestX = 0
DestY = 0
StartX = 0
StartY = 0
XDiff = 0
YDiff = 0
DestSpeed = 0
MoveTime = 0
DestZoom = 0
DestZoomSpeed = 0
} else if  mInterfaceController.CurrentView = MicroView {
StartZoom(DestZoomSpeed,DestX,DestY)
XYMove = false
DestX = 0
DestY = 0
StartX = 0
StartY = 0
XDiff = 0
YDiff = 0
DestSpeed = 0
MoveTime = 0
DestZoom = 0
DestZoomSpeed = 0
}
} else {
if  mInterfaceController.CurrentView = MacroView {
XYMoveType = "moveout"
StartY = mInterfaceController.BaseYView
TargetY = DestY
YChange = TargetY - StartY
ex_audio_set_volume("skintouch",BothVolMod(0.01),30)
ex_audio_set_pitch("skintouch",random_range(0.8,1.2),0)
ex_audio_play("skintouch",1)
} else if  mInterfaceController.CurrentView = MicroView {
XYMoveType = "movein"
StartX = mInterfaceController.BaseXView
StartY = mInterfaceController.BaseYView
TargetY = DestY - (view_hview[1] / 2)
TargetX = DestX - (view_wview[1] / 2)
XChange = TargetX - StartX
YChange = TargetY - StartY
ex_audio_set_volume("skintouch",BothVolMod(0.01),30)
ex_audio_set_pitch("skintouch",random_range(0.8,1.2),0)
ex_audio_play("skintouch",1)
}
}


WriteToLog("Moved to a certain position.")
StartingXYMove = false


}
}
