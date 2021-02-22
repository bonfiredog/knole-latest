///PinchTwo

//Start pinch if touched, end pinch if end.
if TwoFingerJustTouched() {
StartPinchTwo = true
PinchStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2))
PinchCentreX = lengthdir_x(PinchStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2)))
PinchCentreY = lengthdir_y(PinchStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2)))
PinchTwoOutput[Amount] = 0
}

if TwoFingerRelease() {
StartPinchTwo = false
PinchCentreX = 0
PinchCentreY = 0
PinchPercentage = 0
PinchStartDistance = 0
PinchTwoOutput[IsHappening] = false
PinchTwoOutput[GestureType] = "none"
PinchTwoOutput[Amount] = 0
}

if StartPinchTwo = true and TwoFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchTwoOutput[IsHappening] = true
PinchTwoOutput[Amount] = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2)) / PinchStartDistance * 100

if PinchTwoOutput[Amount] < 100 {
PinchTwoOutput[GestureDirection] = "in"
} else if PinchTwoOutput[Amount] = 100 {
PinchTwoOutput[GestureDirection] = "none"
} else if PinchTwoOutput[Amount] > 100 {
PinchTwoOutput[GestureDirection] = "out"
}

}

return PinchTwoOutput




