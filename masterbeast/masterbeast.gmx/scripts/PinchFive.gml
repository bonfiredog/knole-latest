///PinchFive

//Start pinch if touched, end pinch if end.
if FiveFingerJustTouched() {
StartPinchFive = true
PinchStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Thumb),device_mouse_y(Thumb))
PinchCentreX = lengthdir_x(PinchStartDistance / 4,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Thumb),device_mouse_y(Thumb)))
PinchCentreY = lengthdir_y(PinchStartDistance / 4,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Thumb),device_mouse_y(Thumb)))
PinchFiveOutput[Amount] = 0
}

if FiveFingerRelease() {
StartPinchFive = false
PinchCentreX = 0
PinchCentreY = 0
PinchPercentage = 0
PinchStartDistance = 0
PinchFiveOutput[IsHappening] = false
PinchFiveOutput[GestureType] = "none"
PinchFiveOutput[Amount] = 0
}

if StartPinchFive = true and FiveFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchFiveOutput[IsHappening] = true
PinchFiveOutput[Amount] = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Thumb),device_mouse_y(Thumb)) / PinchStartDistance * 100

if PinchFiveOutput[Amount] < 100 {
PinchFiveOutput[GestureDirection] = "in"
} else if PinchFiveOutput[Amount] = 100 {
PinchFiveOutput[GestureDirection] = "none"
} else if PinchFiveOutput[Amount] > 100 {
PinchFiveOutput[GestureDirection] = "out"
}

}

return PinchFiveOutput




