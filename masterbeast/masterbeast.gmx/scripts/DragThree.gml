if ThreeFingerJustTouched() {
ThreeDragStart = true
ThreeDragOutput[IsHappening] = true
ThreeDragOutput[Direction] = 0
ThreeDragOutput[Speed] = 0
ThreeDragOutput[LastX] = device_mouse_x(Finger3)
ThreeDragOutput[LastY] = device_mouse_y(Finger3)
ThreeDragOutput[IsFlick] = false
}

if ThreeFingerRelease() {
ThreeDragStart = false
ThreeDragOutput[IsHappening] = false
ThreeDragOutput[Direction] = 0
ThreeDragOutput[Speed] = 0
ThreeDragOutput[X] = 0
ThreeDragOutput[Y] = 0
ThreeDragOutput[LastX] = 0
ThreeDragOutput[LastY] = 0
ThreeDragOutput[IsFlick] = false
}

if ThreeDragStart = true and ThreeFingerContinuePress() {
ThreeDragOutput[X] = device_mouse_x(Finger3)
ThreeDragOutput[Y] = device_mouse_y(Finger3)
ThreeDragOutput[Direction] = point_direction(ThreeDragOutput[LastX],ThreeDragOutput[LastY],ThreeDragOutput[X],ThreeDragOutput[Y])
ThreeDragOutput[Speed] = point_distance(ThreeDragOutput[LastX],ThreeDragOutput[LastY],ThreeDragOutput[X],ThreeDragOutput[Y])
if ThreeDragOutput[Speed] > 10 {
ThreeDragOutput[IsFlick] = false
}
ThreeDragOutput[LastX] = device_mouse_x(Finger3)
ThreeDragOutput[LastY] = device_mouse_y(Finger3)
}

return ThreeDragOutput
