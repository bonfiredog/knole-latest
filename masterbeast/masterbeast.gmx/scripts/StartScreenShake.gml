///StartScreenShake(time,intensity,sidetime)
with mInterfaceController {
if ScreenShaking = false {
ScreenShaking = true
SSDir = choose("left","right")
OriginalXView = view_xview[mInterfaceController.CurrentViewNumber]
ShakeMod = 0
SSSideTime = argument2
}
SSTime = round(argument0)
SSIntensity = round(argument1)
OriginalSSSideTime = argument2
OriginalSSIntensity = round(argument1)
WindDownCatch = 60
}

