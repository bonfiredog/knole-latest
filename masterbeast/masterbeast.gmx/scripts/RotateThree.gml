///RotateThree

//Start pinch if touched, end pinch if end.
if ThreeFingerJustTouched() {
StartRotateThree = true
RotateStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3))

RotateCentreX = lengthdir_x(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3)))
RotateCentreY = lengthdir_y(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger3),device_mouse_y(Finger3)))
RotateStartRotation = point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger3),device_mouse_y(Finger3))
RotateThreeOutput[Amount] = 0
}

if ThreeFingerRelease() {
StartRotateThree = false
RotateCentreX = 0
RotateCentreY = 0
RotateStartRotation = 0
RotateStartDistance = 0
RotateThreeOutput[IsHappening] = false
RotateThreeOutput[GestureType] = "none"
RotateThreeOutput[Amount] = 0
}


if StartRotateThree = true and ThreeFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchThreeOutput[IsHappening] = true
PinchThreeOutput[Amount] = RotateStartRotation - point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger3),device_mouse_y(Finger3))


if PinchThreeOutput[Amount] < 0 {
PinchThreeOutput[GestureDirection] = "counterclock"
} else if PinchThreeOutput[Amount] = 0 {
PinchThreeOutput[GestureDirection] = "none"
} else if PinchThreeOutput[Amount] > 0 {
PinchThreeOutput[GestureDirection] = "clock"
}

}

return PinchThreeOutput




