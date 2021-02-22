///RotateFour

//Start pinch if touched, end pinch if end.
if FourFingerJustTouched() {
StartRotateFour = true
RotateStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4))

RotateCentreX = lengthdir_x(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4)))
RotateCentreY = lengthdir_y(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4)))
RotateStartRotation = point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger4),device_mouse_y(Finger4))
RotateFourOutput[Amount] = 0
}

if FourFingerRelease() {
StartRotateFour = false
RotateCentreX = 0
RotateCentreY = 0
RotateStartRotation = 0
RotateStartDistance = 0
RotateFourOutput[IsHappening] = false
RotateFourOutput[GestureType] = "none"
RotateFourOutput[Amount] = 0
}


if StartRotateFour = true and FourFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchFourOutput[IsHappening] = true
PinchFourOutput[Amount] = RotateStartRotation - point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger4),device_mouse_y(Finger4))


if PinchFourOutput[Amount] < 0 {
PinchFourOutput[GestureDirection] = "counterclock"
} else if PinchFourOutput[Amount] = 0 {
PinchFourOutput[GestureDirection] = "none"
} else if PinchFourOutput[Amount] > 0 {
PinchFourOutput[GestureDirection] = "clock"
}

}

return PinchFourOutput




