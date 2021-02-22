///PinchFour

//Start pinch if touched, end pinch if end.
if FourFingerJustTouched() {
StartPinchFour = true
PinchStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4))
PinchCentreX = lengthdir_x(PinchStartDistance / 4,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4)))
PinchCentreY = lengthdir_y(PinchStartDistance / 4,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4)))
PinchFourOutput[Amount] = 0
}

if FourFingerRelease() {
StartPinchFour = false
PinchCentreX = 0
PinchCentreY = 0
PinchPercentage = 0
PinchStartDistance = 0
PinchFourOutput[IsHappening] = false
PinchFourOutput[GestureType] = "none"
PinchFourOutput[Amount] = 0
}

if StartPinchFour = true and FourFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchFourOutput[IsHappening] = true
PinchFourOutput[Amount] = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger4),device_mouse_y(Finger4)) / PinchStartDistance * 100

if PinchFourOutput[Amount] < 100 {
PinchFourOutput[GestureDirection] = "in"
} else if PinchFourOutput[Amount] = 100 {
PinchFourOutput[GestureDirection] = "none"
} else if PinchFourOutput[Amount] > 100 {
PinchFourOutput[GestureDirection] = "out"
}

}

return PinchFourOutput




