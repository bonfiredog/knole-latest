///PinchThree

//Start pinch if touched, end pinch if end.
if ThreeFingerJustTouched() {
StartPinchThree = true
PinchStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3))
PinchCentreX = lengthdir_x(PinchStartDistance / 3,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3)))
PinchCentreY = lengthdir_y(PinchStartDistance / 3,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3)))
PinchThreeOutput[Amount] = 0
}

if ThreeFingerRelease() {
StartPinchThree = false
PinchCentreX = 0
PinchCentreY = 0
PinchPercentage = 0
PinchStartDistance = 0
PinchThreeOutput[IsHappening] = false
PinchThreeOutput[GestureType] = "none"
PinchThreeOutput[Amount] = 0
}

if StartPinchThree = true and ThreeFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchThreeOutput[IsHappening] = true
PinchThreeOutput[Amount] = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3)) / PinchStartDistance * 100

if PinchThreeOutput[Amount] < 100 {
PinchThreeOutput[GestureDirection] = "in"
} else if PinchThreeOutput[Amount] = 100 {
PinchThreeOutput[GestureDirection] = "none"
} else if PinchThreeOutput[Amount] > 100 {
PinchThreeOutput[GestureDirection] = "out"
}

}

return PinchThreeOutput




