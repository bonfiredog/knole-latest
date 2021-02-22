///RotateTwo

//Start pinch if touched, end pinch if end.
if TwoFingerJustTouched() {
StartRotateTwo = true
RotateStartDistance = point_distance(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2))

RotateCentreX = lengthdir_x(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2)))
RotateCentreY = lengthdir_y(RotateStartDistance / 2,point_direction(device_mouse_x(Finger1),device_mouse_y(Finger1),device_mouse_x(Finger2),device_mouse_y(Finger2)))
RotateStartRotation = point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger2),device_mouse_y(Finger2))
RotateTwoOutput[Amount] = 0
}

if TwoFingerRelease() {
StartRotateTwo = false
RotateCentreX = 0
RotateCentreY = 0
RotateStartRotation = 0
RotateStartDistance = 0
RotateTwoOutput[IsHappening] = false
RotateTwoOutput[GestureType] = "none"
RotateTwoOutput[Amount] = 0
}


if StartRotateTwo = true and TwoFingerContinuePress() {
//Change PinchPercentage depending on movement.
PinchTwoOutput[IsHappening] = true
PinchTwoOutput[Amount] = RotateStartRotation - point_direction(RotateCentreX,RotateCentreY,device_mouse_x(Finger2),device_mouse_y(Finger2))


if PinchTwoOutput[Amount] < 0 {
PinchTwoOutput[GestureDirection] = "counterclock"
} else if PinchTwoOutput[Amount] = 0 {
PinchTwoOutput[GestureDirection] = "none"
} else if PinchTwoOutput[Amount] > 0 {
PinchTwoOutput[GestureDirection] = "clock"
}

}

return PinchTwoOutput




