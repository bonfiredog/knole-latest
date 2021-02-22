if TwoFingerJustTouched() {
TwoDragStart = true
TwoDragOutput[IsHappening] = true
TwoDragOutput[Direction] = 0
TwoDragOutput[Speed] = 0
TwoDragOutput[LastX] = device_mouse_x(Finger2)
TwoDragOutput[LastY] = device_mouse_y(Finger2)
TwoDragOutput[IsFlick] = false
}

if TwoFingerRelease() {
TwoDragStart = false
TwoDragOutput[IsHappening] = false
TwoDragOutput[Direction] = 0
TwoDragOutput[Speed] = 0
TwoDragOutput[X] = 0
TwoDragOutput[Y] = 0
TwoDragOutput[LastX] = 0
TwoDragOutput[LastY] = 0
TwoDragOutput[IsFlick] = false
}

if TwoDragStart = true and TwoFingerContinuePress() {
TwoDragOutput[X] = device_mouse_x(Finger2)
TwoDragOutput[Y] = device_mouse_y(Finger2)
TwoDragOutput[Direction] = point_direction(TwoDragOutput[LastX],TwoDragOutput[LastY],TwoDragOutput[X],TwoDragOutput[Y])
TwoDragOutput[Speed] = point_distance(TwoDragOutput[LastX],TwoDragOutput[LastY],TwoDragOutput[X],TwoDragOutput[Y])
if TwoDragOutput[Speed] > 10 {
TwoDragOutput[IsFlick] = true
}
TwoDragOutput[LastX] = device_mouse_x(Finger2)
TwoDragOutput[LastY] = device_mouse_y(Finger2)
}

return TwoDragOutput
